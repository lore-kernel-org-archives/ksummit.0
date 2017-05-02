Return-Path: <lee.jones@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1068FB55
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 May 2017 08:09:21 +0000 (UTC)
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52C43155
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 May 2017 08:09:20 +0000 (UTC)
Received: by mail-wr0-f175.google.com with SMTP id l50so73945353wrc.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 May 2017 01:09:20 -0700 (PDT)
Date: Tue, 2 May 2017 09:09:15 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170502080915.jfvmticdqmaygndt@dell>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
	<20170425091058.qhxkpocnhhd4jysh@dell>
	<CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 29 Apr 2017, Daniel Vetter wrote:

> [Back from a bit of vacation, so I'm just jumping into the middle of
> the cross-subsystem/invariant topic branch discussion. I read all the
> other mails, but this seems most relevant.]
> 
> On Tue, Apr 25, 2017 at 11:10 AM, Lee Jones <lee.jones@linaro.org> wrote:
> > Although common place, immutable branches are still treated as the
> > last resort.  If patches can be taken via their respective subsystem
> > trees without fear of disruption, they are.  Contributors often
> > attempt to have their *new* cross-subsystem functionality taken in via
> > a single tree (requiring an immutable branch), purely because it's
> > convenient and the merge-time becomes deterministic, but we do not
> > allow that unless there are hard/unavoidable build-time dependencies.
> 
> Honest question, why exactly?
> 
> At a quick ignorant glance this seems to trade contributor time
> against maintainer time, which in my opinion means you should ramp up
> your maintainer training and mentoring to have much more maintainer
> time available and make contributing to upstream more attractive. But
> drm != other subsystems, I'd like to hear more of why you picked this
> tradeoff.

It looks like James et. al. have provided some pretty good technical
reasons as to why taking patches via their associated subsystem repos
is *always* preferred, so I will not labour this point.  However I
will provide a frank answer to your trading Maintainer for Contributor
time query.

To be candid, you're right we do that, and it's exactly what we
should be doing.  There are a couple of reasons for this:

The first is a simple matter of time related mathematics.  Taking an
average over the past 10 releases, MFD and Backlight had ~30 unique
submitters per release.  If even some of them managed to get
themselves into habits which cost me more time than it already does
to Maintain the subsystems, then either the Maintainership or my
employment role would be negatively impacted.  I view it better to
cost each Contributor 30 mins, than it to cost me 30 mins multiplied
by the amount of Contributors. Moreover, most Contributors are doing
so *as part* of their employment role, where-as myself and a great
many other Maintainers are operating *as well as*, or outside of
ours.

Secondly, this is about Contributor training and the encouragement of
good practices from the outset; patch separation, expert reviews,
conflict mitigation, bisection preservation, etc etc.  If we train and
arm the Contributors of today, we inherently encourage the Maintainers
of tomorrow.

-- 
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
