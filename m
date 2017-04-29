Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C049412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Apr 2017 21:39:46 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B350BA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Apr 2017 21:39:35 +0000 (UTC)
Message-ID: <1493501971.2367.23.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Lee Jones <lee.jones@linaro.org>
Date: Sat, 29 Apr 2017 14:39:31 -0700
In-Reply-To: <CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
	<20170425091058.qhxkpocnhhd4jysh@dell>
	<CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2017-04-29 at 23:00 +0200, Daniel Vetter wrote:
> [Back from a bit of vacation, so I'm just jumping into the middle of
> the cross-subsystem/invariant topic branch discussion. I read all the
> other mails, but this seems most relevant.]
> 
> On Tue, Apr 25, 2017 at 11:10 AM, Lee Jones <lee.jones@linaro.org>
> wrote:
> > Although common place, immutable branches are still treated as the
> > last resort.  If patches can be taken via their respective 
> > subsystem trees without fear of disruption, they are.  Contributors 
> > often attempt to have their *new* cross-subsystem functionality 
> > taken in via a single tree (requiring an immutable branch), purely 
> > because it's convenient and the merge-time becomes deterministic, 
> > but we do not allow that unless there are hard/unavoidable build
> > -time dependencies.
> 
> Honest question, why exactly?

Because if you take a patch for, say SCSI, through your tree it
potentially becomes a big pain for everyone if we pick up a conflict. 
 The conflict isn't seen until linux-next finds it because the
conflicting patch is in your tree not mine (and SCSI contributors
mostly build against the SCSI tree) then Stephen has to come up with a
merge and we have to validate it and send it on to Linus as a
recommendation at merge window time.

Another good reason for not taking patches to subsystems outside yours
are that you're not necessarily an expert in whatever subsystem it is,
so a patch would get a better review cycle going through the correct
subsystem tree.

There are good reasons to take on this pain, like the conflicting patch
depends on something else that's in your tree but not in mine, so
there's no clean way to split it up and thus it makes sense to take it
through your tree and just handle the conflicts as they arise but
absent that the rule should be that patches to a subsystem go through
its tree.

> At a quick ignorant glance this seems to trade contributor time
> against maintainer time, which in my opinion means you should ramp up
> your maintainer training and mentoring to have much more maintainer
> time available and make contributing to upstream more attractive. But
> drm != other subsystems, I'd like to hear more of why you picked this
> tradeoff.

It's not just maintainer time ... taking patches outside your subsystem
should always have a good reason because it's not just a
training/tooling issue; you're potentially impacting some other
subsystem by this action.

James
