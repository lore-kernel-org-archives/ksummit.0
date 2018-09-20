Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EDC5ADB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 11:00:49 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56674798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 11:00:49 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id e14-v6so12556198itf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 04:00:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <6032585.bO9iOMYsh1@avalon>
References: <20180910174638.26fff182@vmware.local.home>
	<17698287.4NULLKGPAa@avalon>
	<5667498.l7gq0jG24g@aspire.rjw.lan> <6032585.bO9iOMYsh1@avalon>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Sep 2018 13:00:47 +0200
Message-ID: <CAKMK7uHwMzXaDMA8jLty50ueut8ycckoqSwYxVy31piM4O0hVA@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, Sep 20, 2018 at 12:10 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Thursday, 20 September 2018 12:02:33 EEST Rafael J. Wysocki wrote:
>> Honestly, do we have any research data on how many people actually are put
>> off by the "unfriendly" e-mail use for patch review requirement or is it
>> just pure speculation?
>
> I believe Daniel has more information.

I think 2 people left the drm/i915 team (and kernel development at
large) explicitly because of our archaic toolchain. A pile more left,
where the archaic toolchain at least motivated a switch in
teams/projects. No solid data yet on what happens when we'd enable
merge request, but some of the engineers (who never contributed to the
kernel before) I've chatted with are absolutely raving about the mere
possibility even if very small&distant. This might be biased towards
coporate teams, since I have no data on the people who might join as
volunteers or from random places - I only know this because they all
worked for Intel.

Also, no data ofc about how many we might lose if we force a merge
request flow instead of patches scribbled on chalk boards :-) And a
good middle ground should be achievable, giving us everyone.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
