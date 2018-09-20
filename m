Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 13555F0C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 11:08:32 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92B447CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 11:08:31 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Sep 2018 14:08:43 +0300
Message-ID: <4485753.QfrrHSnrUr@avalon>
In-Reply-To: <CAKMK7uHwMzXaDMA8jLty50ueut8ycckoqSwYxVy31piM4O0hVA@mail.gmail.com>
References: <20180910174638.26fff182@vmware.local.home>
	<6032585.bO9iOMYsh1@avalon>
	<CAKMK7uHwMzXaDMA8jLty50ueut8ycckoqSwYxVy31piM4O0hVA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Daniel,

On Thursday, 20 September 2018 14:00:47 EEST Daniel Vetter wrote:
> On Thu, Sep 20, 2018 at 12:10 PM, Laurent Pinchart wrote:
> > On Thursday, 20 September 2018 12:02:33 EEST Rafael J. Wysocki wrote:
> >> Honestly, do we have any research data on how many people actually are
> >> put off by the "unfriendly" e-mail use for patch review requirement or is
> >> it just pure speculation?
> > 
> > I believe Daniel has more information.
> 
> I think 2 people left the drm/i915 team (and kernel development at
> large) explicitly because of our archaic toolchain. A pile more left,
> where the archaic toolchain at least motivated a switch in
> teams/projects. No solid data yet on what happens when we'd enable
> merge request, but some of the engineers (who never contributed to the
> kernel before) I've chatted with are absolutely raving about the mere
> possibility even if very small&distant.

Have you asked them for precise points that bother them (up to the point they 
wouldn't contribute) in the existing process ?

> This might be biased towards coporate teams, since I have no data on the
> people who might join as volunteers or from random places - I only know this
> because they all worked for Intel.

Thank you for providing a bit of data.

> Also, no data ofc about how many we might lose if we force a merge
> request flow instead of patches scribbled on chalk boards :-)

Is that the opposite of the patches through instagram workflow ? :-)

The answer obviously depends on what new process we would put in place. 
There's a wide range of options between enabling pull requests through git 
pull and forcing the whole review and merge process through gerrit. In the 
latter case you'd lose me :-)

> And a good middle ground should be achievable, giving us everyone.

I believe so as well, if we manage to reach a sensible consensus.

-- 
Regards,

Laurent Pinchart
