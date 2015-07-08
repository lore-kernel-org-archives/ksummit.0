Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBC45ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:47:57 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 595BF17D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:47:57 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 08 Jul 2015 22:48:08 +0300
Message-ID: <2620919.1CPnWuV30b@avalon>
In-Reply-To: <CAKMK7uF=0qdE6SHp897C_9JALKQF2aZwnA3VDxpTnM1s-NxwiQ@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
	<CAKMK7uF=0qdE6SHp897C_9JALKQF2aZwnA3VDxpTnM1s-NxwiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "Lespiau, Damien" <damien.lespiau@intel.com>,
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

On Wednesday 08 July 2015 21:19:27 Daniel Vetter wrote:
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

I implemented support for auto-delegating patches to developers based on the 
files touched by the patch, using regular expressions. We're using this for 
the media subsystem, but I've never found^H^H^H^H^Htook the time to push the 
changes upstream. Would anyone be interested in that ?

-- 
Regards,

Laurent Pinchart
