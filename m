Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6714F941
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:09:19 +0000 (UTC)
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C62AB1ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:09:18 +0000 (UTC)
Received: by mail-oi0-f51.google.com with SMTP id l65so226125546oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 01:09:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5799DB1B.5010307@arm.com>
References: <20160726223054.GA30993@dtor-ws> <5799DB1B.5010307@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Aug 2016 10:09:17 +0200
Message-ID: <CACRpkdbAPDSVYp8UEGMwV21PxURce7C94sW5y1PD5QQiGDJpvA@mail.gmail.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
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

On Thu, Jul 28, 2016 at 12:14 PM, Marc Zyngier <marc.zyngier@arm.com> wrote:
> On 26/07/16 23:30, Dmitry Torokhov wrote:

>> - I would like to sync up with people and discuss [lack of] progress
>>   on topic of device probe ordering (including handling of deferred
>>   probes, asynchronous probes, etc).
>
> I'm extremely interested in discussing this.

I've also tried to pitch in on it in the past but I just feel stupid
whenever we try to come up with something better than what
we have :(

> It has wide reaching consequences as (with my irqchip maintainer hat on)
> we've had to pretend that some bits of HW (timers, interrupt
> controllers) are not "devices". Not a massive issue for most, except
> when your interrupt controller has requirements that are very similar to
> the DMA mapping API (which you cannot use because "not a device"). Other
> problems are introduced by things like wire-MSI bridges, and most people
> end-up resorting to hacks like ad-hoc initcalls and sprinkling deferred
> probes in specific drivers.

Same feeling here. I'm accepting patches for random initcall
reordering because there is nothing else I can do, people need to
have their systems running. But it feels really fragile.

Deferred probe alleviated the problem, but I remember saying at
the time that what we really need to do is build a dependency
graph and resolve it the same way e.g. systemd does. (Someone
may have called me BS on that, either for being wrong about everything
as usual or because of mentioning systemd, I don't know which one.)

The latest proposal I saw came from Rafael and he had a scratch
idea for a dependency graph that I really liked, but I guess he's been
sidetracked since. Rafael, what happened with that?

Yours,
Linus Walleij
