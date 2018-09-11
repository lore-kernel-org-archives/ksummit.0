Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70C83144F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 01:11:06 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F46F7E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 01:11:04 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id d19-v6so11361296pgv.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 18:11:04 -0700 (PDT)
Received: from localhost.localdomain
	([2600:1010:b025:5d53:7256:81ff:febd:926d])
	by smtp.gmail.com with ESMTPSA id
	b14-v6sm25781544pfc.178.2018.09.10.18.11.02
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Sep 2018 18:11:03 -0700 (PDT)
Date: Mon, 10 Sep 2018 18:11:00 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20180911011056.GA6958@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] CVE patches annotation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

I would like to open a discussion on improving the annotation
around CVE patches on the Linux kernel. Today, the kernel Documentation
mentions about CVE assignment and asks as a good practice to at least
mention the CVE  number in the patch [1]. But, is that enough?
Should the kernel have more info about what patches fixes a specific
CVE?

Some of the challenges with current process:
- The info about of about what CVEs have been patched in a kernel is
  outside the kernel tree / git history.
- Today, some patches have the CVE info, and many others do not mention
  anything about CVE number.
- As mentioned in the kernel documentation [1], not always the CVE
  number is assigned when the patch(es) go into the kernel tree, so
  maybe this may require some post merge annotation?
- It is not always straight forward to know what patches are needed to
  fix the CVE, specially on cases the fix require a series of
  preparation work before the actual fix.

  Specially on the later case, annotation can help, specially while
  backporting.

BR,


[1] - https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
