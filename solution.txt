Q1-The above Script_Q1 is bash script that might struggle with AI Model.Please refer Script_Q1 for output.
   To run script follow steps below,
   - chmod +x Script_Q1.sh
   - ./Script_Q1.sh

   After I ran script this is output I got
   ./Script_Q1.sh: line 11: systemctl: command not found
    tee: /var/log/service_check.log: Permission denied
    Thu Oct  2 10:53:10 IST 2025: ERROR - docker is NOT running!
    ./Script_Q1.sh: line 11: systemctl: command not found
    tee: /var/log/service_check.log: Permission denied
    Thu Oct  2 10:53:10 IST 2025: ERROR - nginx is NOT running!
    ./Script_Q1.sh: line 11: systemctl: command not found
    tee: /var/log/service_check.log: Permission denied
    Thu Oct  2 10:53:10 IST 2025: ERROR - sshd is NOT running!


Q2-Even though this script looks simple, AI models may struggle to give a perfect output in one try because:
   Some servers use systemctl, others use service command. AI can’t know which one your system has.
   Paths like /var/log/service_check.log may need root permission.
   AI doesn’t know which services matter for your DevOps environment. You might want kubelet or prometheus instead of docker and nginx.
   If the first script fails, the AI can’t see the error and fix it automatically. Humans usually test, debug, and adjust.
   Should the script restart the service if it’s down? Should it send an email or Slack alert instead of just logging? AI can’t decide without clarification.
