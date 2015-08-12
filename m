Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F2EF997
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:15:42 +0000 (UTC)
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E62631C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:15:41 +0000 (UTC)
Received: by pdbfa8 with SMTP id fa8so9852255pdb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 11:15:41 -0700 (PDT)
Received: from urahara (static-50-53-82-155.bvtn.or.frontiernet.net.
	[50.53.82.155]) by smtp.gmail.com with ESMTPSA id
	xw4sm7217540pbc.69.2015.08.12.11.15.40
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Aug 2015 11:15:41 -0700 (PDT)
Date: Wed, 12 Aug 2015 11:15:52 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150812111552.0f7e5fe7@urahara>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TOPIC] userspace infrastructure services
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I expected someone else to bring this topic up...

One thing that is happening is that there is lots of activity in moving core features
of the kernel into userspace (networking, storage, security). I don't want to get into
an argument over whether that is good or bad; but the problem from the kernel
point of view is that the existing API's are getting stretched to the boundary.

The area I am most familiar with is the DPDK which has to have its own UIO drivers
to work in all environments (get device into userspace). And then has to have its
own drivers to simulate network device (put device back into kernel).  This leads
to unmanageable ABI and development technical debt. I have heard that same thing
is planned for storage as well.

The question is should the kernel accommodate this by absorbing/integrating/fixing
this; or just let them suffer?
