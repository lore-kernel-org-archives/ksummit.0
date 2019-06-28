Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AECA7CA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 20:11:30 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5777613A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 20:11:30 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id w25so15078900ioc.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 13:11:30 -0700 (PDT)
To: ksummit-discuss@lists.linuxfoundation.org
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
Date: Fri, 28 Jun 2019 14:11:28 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
	commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

In a recent patch discussion, I learned that some maintainers would like
to see patch version changes in the commit log.

I went looking in the git log and found a handful of recent commits with
"Changes since" type information in the commit logs. It appears to be
maintainer preference and a recent trend.

I see the value in including the information. It can be informative
and valuable for future work in the area.

Is this something that we would like to see in all commits going 
forward? If so, updating submitting patch documentation and making
sure the version information evolves from "informal" to more formal
nature that fits in with the commit logs would be helpful.

Making sure it doesn't get out of hand and commit logs don't
become too long to be useful would also be helpful.

Late entry, as I happened to come across this a day or two ago.

thanks,
-- Shuah
