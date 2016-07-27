Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A66738FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 09:26:09 +0000 (UTC)
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0682F20C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 09:26:08 +0000 (UTC)
Received: by mail-oi0-f43.google.com with SMTP id l65so9415737oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 02:26:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160727044631.GA75806@f23x64.localdomain>
References: <20160727044631.GA75806@f23x64.localdomain>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Jul 2016 11:25:52 +0200
Message-ID: <CACRpkdZmXsYGBTP=AntbHts=ZfuG_HuPMi=5s+bQHZuLmQK10Q@mail.gmail.com>
To: Darren Hart <dvhart@infradead.org>, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 6:46 AM, Darren Hart <dvhart@infradead.org> wrote:

>   - Developing a "safety culture" and any overlap that may have with security

Do you mean safety as in "Linux in airbags and smoke detectors"?

This area is interesting for GPIO and IIO as well for natural reasons:
these systems all tend to use GPIO and sensors. (Albeit more often
than not with some horrific userspace hodge-podge but this is not the
time to be grumpy about that.)

This presentation appeared at LinuxCon Japan (got the link from
my colleague Takahiro Akashi):

Qualifying Linux for Functional Safety
http://events.linuxfoundation.org/sites/events/files/slides/20160713_SIL2LinuxMP_Min_ALS_0.9_pub.pdf

I have been in contact with a Swedish company working in the fire alarm
business as well.

My overall feeling is that world regulations (standards) on safety-critical
software seem to be centered around code inspection.

These regulations approach is not to trust any third party but have all
code inspected by independent reviewers for functional safety. All the
time. For every new deployment. Kernel, libc, busybox userspace.
(Or whatever they use.)

Thus Hitachi developed this minimizing stripping out all not-compiled code
and #ifdefs etc too to get down the code size they have to manually inspect
to a minimum. (It easily translates into work hours.)

My loose thoughts on the issue is twofold:

- We will have an influx of professional safety reviewers that do not
  share their review comments with us, instead apply fixes locally and
  not upstream. This is potentially dangerous if the next reviewer for
  a safety-critical system misses the same bug. (Not to say unethical
  vs the community but I have come to understand that some people
  out there do not care about that.) So we need to send a message to
  the safety-critical industry that any issues found in such safety
  inspections need to go upstream pronto. No vendor tree:ing of this.

- Can we record external inspection-only code reviews done by these
  independent code reviewers (post-minimization) into the kernel (etc) git?
  That I guess is pretty useful for building formal trust for the code,
  but I never heard of git annotations to some random code lines like
  that.

- Should minimization be a part of the kernel standard tooling for use
  cases like this?

Incidentally that may overlap with the footprint minimizing goal: if you can
configure code out (such as the modular syscalls things that Nico has
been working on), that makes this kind of code minimization easier and
may employ similar tooling.

Yours,
Linus Walleij
