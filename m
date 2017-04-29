Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DA0D98C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Apr 2017 21:00:09 +0000 (UTC)
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D2941B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Apr 2017 21:00:05 +0000 (UTC)
Received: by mail-it0-f42.google.com with SMTP id r185so12018947itd.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Apr 2017 14:00:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170425091058.qhxkpocnhhd4jysh@dell>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
	<20170425091058.qhxkpocnhhd4jysh@dell>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 29 Apr 2017 23:00:04 +0200
Message-ID: <CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

[Back from a bit of vacation, so I'm just jumping into the middle of
the cross-subsystem/invariant topic branch discussion. I read all the
other mails, but this seems most relevant.]

On Tue, Apr 25, 2017 at 11:10 AM, Lee Jones <lee.jones@linaro.org> wrote:
> Although common place, immutable branches are still treated as the
> last resort.  If patches can be taken via their respective subsystem
> trees without fear of disruption, they are.  Contributors often
> attempt to have their *new* cross-subsystem functionality taken in via
> a single tree (requiring an immutable branch), purely because it's
> convenient and the merge-time becomes deterministic, but we do not
> allow that unless there are hard/unavoidable build-time dependencies.

Honest question, why exactly?

At a quick ignorant glance this seems to trade contributor time
against maintainer time, which in my opinion means you should ramp up
your maintainer training and mentoring to have much more maintainer
time available and make contributing to upstream more attractive. But
drm != other subsystems, I'd like to hear more of why you picked this
tradeoff.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
