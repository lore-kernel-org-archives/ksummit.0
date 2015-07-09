Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F26CCBB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 03:56:56 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94E5EED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 03:56:55 +0000 (UTC)
Message-ID: <1436414213.23558.2.camel@ellerman.id.au>
From: Michael Ellerman <mpe@ellerman.id.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 09 Jul 2015 13:56:53 +1000
In-Reply-To: <CAKMK7uF=0qdE6SHp897C_9JALKQF2aZwnA3VDxpTnM1s-NxwiQ@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<2102387.OD8sBG4Eol@avalon> <559C73DF.2030008@roeck-us.net>
	<CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
	<CAKMK7uF=0qdE6SHp897C_9JALKQF2aZwnA3VDxpTnM1s-NxwiQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "Lespiau, Damien" <damien.lespiau@intel.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, 2015-07-08 at 21:19 +0200, Daniel Vetter wrote:
> On Wed, Jul 8, 2015 at 4:20 PM, Bjorn Helgaas <bhelgaas@google.com> wrote:
> > I wish I knew how to use patchwork better, or had a smarter workflow
> > that could comprehend a series as a single entity.  Patchwork is a lot
> > of clicking, but I don't know anything better.
> 
> We're working on improving patchwork here to understand series and
> help out with auto-deprecating patches when new versions show up.
> Currently being tested internally and we plan to push to upstream ofc
> and deploy on freedesktop.org (since that's where all the drm/gfx
> folks hang out), but because of all the things going on it's really
> slow. Damien knows more, maybe we could push the current state to some
> git branch somewhere.

I'd be interested in that if you can publish it somewhere.

At the moment I have a very hacky script that tries to recognise a series on
the client, which usually works, but not always.

cheers
