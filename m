Return-Path: <seanpaul@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 23A9A106D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:08:41 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 861D5713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:08:40 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id s10-v6so6168427edb.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 07:08:40 -0700 (PDT)
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com.
	[74.125.82.46]) by smtp.gmail.com with ESMTPSA id
	h34-v6sm1269487eda.58.2018.09.05.07.08.37
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Sep 2018 07:08:38 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id n11-v6so7873289wmc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 07:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
In-Reply-To: <20180905135528.ase6evcv7rlwufyr@mwanda>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 5 Sep 2018 10:08:00 -0400
Message-ID: <CAOw6vbKa+85J0gDbh0Fj3GYQFcDma_qPPYjSUKxYvjmHvO3a5A@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Sep 5, 2018 at 9:56 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Sep 05, 2018 at 03:35:53PM +0200, Takashi Iwai wrote:
> > The staging driver is a wonderful process to promote the downstream
> > code to the upstream, but I have doubt whether it's working really as
> > expected for now.
> >
> > - Often the drivers live forever in staging although they should have
> >   been moved to the upper, properly maintained, subsystems.
>
> The only one that comes to mind is comedi.  I think those guys know that
> everyone is fine with them moving the code.
>
> Do you have another example?
>

The android stuff has been in a constant state of almost graduating
for a while now.

> >
> > - Code changes in staging are mostly only scratching surfaces, minor
> >   code style cleanups, etc, what checkpatch suggests.
>
> That's probably true for the wireless drivers because converting them
> to use mac80211 is complicated.  The other drivers seem to be doing
> better.
>

We have the same problem in drm. There have been a few subsystem
refactors that have missed updating drivers in staging. It's also
trickier to coordinate refactors across drm/staging trees. As such, we
have been trying to dissuade people from using staging for drm.

> >
> > - There are little communications with the corresponding subsystem;
> >   already a few times I was surprised by casually finding a staging
> >   driver code by grepping for preparing API changes.
>
> Which ones are you interested in?  I'd always prefer to hand off staging
> drivers to an existing subsystem but it's not always clear who that
> should be.

In the case of vboxvideo, we won't accept it in drm since it's not an
atomic driver. staging's bar for entry was lower, so the driver was
stuck in there. Perhaps we would have been better to take it in drm
behind a config, but that's not ideal either.

Sean

>
> regards,
> dan carpenter
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
