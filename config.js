const { Client } = require('ssh2');
const fs = require('fs');

const os = require('os');
const path = require('path');

const sshConfig = {
  host: 'ssh.climbingclan.com',
  username: 'bitnami',
  agent: process.env.SSH_AUTH_SOCK,
  compression: true,
  serverAliveInterval: 60,
  forwardX11: true
};

async function getDbPassword() {
  return new Promise((resolve, reject) => {
    const conn = new Client();
    conn.on('ready', () => {
      conn.exec('cat ~/bitnami_application_password', (err, stream) => {
        if (err) reject(err);
        let password = '';
        stream.on('data', (data) => {
          password += data.toString();
        }).on('close', () => {
          conn.end();
          resolve(password.trim());
        });
      });
    }).on('error', (err) => {
      reject(err);
    }).connect(sshConfig);
  });
}

module.exports = {
  ssh: sshConfig,
  db: {
    host: 'localhost',
    user: 'root',
    database: 'bitnami_wordpress'
  },
  getDbPassword
};
