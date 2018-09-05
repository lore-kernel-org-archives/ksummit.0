Return-Path: <seanpaul@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F5B0115A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:30:39 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7ABED2D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:30:38 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id p52-v6so6219414eda.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 07:30:38 -0700 (PDT)
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com.
	[74.125.82.53]) by smtp.gmail.com with ESMTPSA id
	g19-v6sm1059931edh.22.2018.09.05.07.30.35
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Sep 2018 07:30:36 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id 207-v6so7920182wme.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 07:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
	<CAOw6vbKa+85J0gDbh0Fj3GYQFcDma_qPPYjSUKxYvjmHvO3a5A@mail.gmail.com>
	<20180905142225.GA8757@kroah.com>
In-Reply-To: <20180905142225.GA8757@kroah.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 5 Sep 2018 10:29:58 -0400
Message-ID: <CAOw6vbLUnpZGm1MdfUpm5W8hp6b_6VuOqOSQUwbXHKYC=P0Bjw@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
 drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 5, 2018 at 10:23 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 05, 2018 at 10:08:00AM -0400, Sean Paul wrote:
> > > Which ones are you interested in?  I'd always prefer to hand off staging
> > > drivers to an existing subsystem but it's not always clear who that
> > > should be.
> >
> > In the case of vboxvideo, we won't accept it in drm since it's not an
> > atomic driver. staging's bar for entry was lower, so the driver was
> > stuck in there. Perhaps we would have been better to take it in drm
> > behind a config, but that's not ideal either.
>
> for vboxvideo, I am pretty sure I got an "it's ok to put it there" from
> the DRM maintainers before I accepted it.  So they know it is there :)
>

Oh for sure, I didn't mean to imply it was there without our knowledge
(reading my mail back the implication is definitely there, apologies).
I think the narrative was "ack to put it there, but it'll cause pain".
If the atomic conversion was done expediently, it wouldn't be so bad,
but it's starting to become an anchor (IMO).

> If it's not ever going to be merged, maybe we should just drop it?

Yeah, I'm fine with that. It doesn't seem like anyone is super
motivated to do the atomic conversion any time soon.

Generally speaking, I think the vboxvideo experiment has shown that
staging isn't a good fit for us. For subsystems with less churn or
surrounding infrastructure, it's probably much less of an issue.

Sean

>
> thanks,
>
> greg k-h
