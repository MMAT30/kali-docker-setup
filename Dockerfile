# docker build --platform linux/amd64 -t kali-ctf:latest .
# docker run -it --platform linux/amd64 --name metasploit metasploitframework/metasploit-framework
FROM kalilinux/kali-rolling:latest 



# create a bind point to transfer files


# install zsh & oh-my-zsh & tools
RUN apt-get update -y \
    && apt-get full-upgrade -y \
    && apt-get autoremove -y \
    && apt-get install curl wget git zsh gcc g++ nasm tree build-essential golang nodejs -y  \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && sed -i 's/robbyrussell/agnoster/g' ~/.zshrc \
    && chsh -s /bin/zsh 


# install kali-linux-headless tools
# RUN apt-get install kali-linux-headless -y


# entry
CMD ["/bin/zsh"]

