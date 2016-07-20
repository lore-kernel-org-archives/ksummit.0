Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3CD34910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 11:56:33 +0000 (UTC)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B504CE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 11:56:32 +0000 (UTC)
Received: by mail-oi0-f49.google.com with SMTP id w18so67567146oiw.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 04:56:32 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 20 Jul 2016 13:56:31 +0200
Message-ID: <CAKMK7uHOmxoRFr2j+KrtVAud1iQq3ySDQMz6rZOLwYVDorNeBA@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: Grant Likely <grant.likely@linaro.org>,
	Markus Heiser <markus.heiser@darmarit.de>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>
Subject: [Ksummit-discuss] [TECH TOPIC] kernel documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

In 4.8 we have a shiny new kernel doc toolchain:

https://lwn.net/Articles/692705/

I think it'd be great if interested parties (might be just a hallway
track) sit together and figure out how to best go about converting all
the existing docs over, and how to link it all together. I think we
pretty much have agreement that the docbook horror show needs to die,
but there's lots of other documentation that I think would be great to
include in the overall (cross-linked!) kernel docs.

People who would be great to be there:
- Jon Corbet
- Mauro Carvalho
- Jani Nikula
- Markus Heiser
- maybe Grant Likely, he made noises about sphinx/rst too

I think converting/polishing docs would also serve well as kernel
newbie task in opw or gsoc or wherever, that might be another
interested group. And anyone else who wants to convert over docs for
their subsystem.

Mostly I'm just sending this out to gauge interest.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
