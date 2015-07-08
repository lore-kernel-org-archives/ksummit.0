Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EC1C9F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:19:28 +0000 (UTC)
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBB1E118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:19:27 +0000 (UTC)
Received: by oiab3 with SMTP id b3so55174173oia.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 12:19:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
	<559C73DF.2030008@roeck-us.net>
	<CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
Date: Wed, 8 Jul 2015 21:19:27 +0200
Message-ID: <CAKMK7uF=0qdE6SHp897C_9JALKQF2aZwnA3VDxpTnM1s-NxwiQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Lespiau, Damien" <damien.lespiau@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 8, 2015 at 4:20 PM, Bjorn Helgaas <bhelgaas@google.com> wrote:
> I wish I knew how to use patchwork better, or had a smarter workflow
> that could comprehend a series as a single entity.  Patchwork is a lot
> of clicking, but I don't know anything better.

We're working on improving patchwork here to understand series and
help out with auto-deprecating patches when new versions show up.
Currently being tested internally and we plan to push to upstream ofc
and deploy on freedesktop.org (since that's where all the drm/gfx
folks hang out), but because of all the things going on it's really
slow. Damien knows more, maybe we could push the current state to some
git branch somewhere.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
