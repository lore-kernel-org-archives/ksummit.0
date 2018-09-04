Return-Path: <jforbes@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FDFDCA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:23:01 +0000 (UTC)
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3756B80E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:23:00 +0000 (UTC)
Received: by mail-oi0-f47.google.com with SMTP id r69-v6so9639729oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 14:23:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
From: Justin Forbes <jforbes@redhat.com>
Date: Tue, 4 Sep 2018 16:22:59 -0500
Message-ID: <CAFbkSA3Zjojhb4uUFrdpJUTSWz1V9RbG_EL83roQY3bzX80i-g@mail.gmail.com>
To: Laura Abbott <labbott@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg KH <gregkh@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
	time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 4, 2018 at 3:58 PM, Laura Abbott <labbott@redhat.com> wrote:
> I'd like to start a discussion about the stable release cycle.
>
> Fedora is a heavy user of the most recent stable trees and we
> generally do a pretty good job of keeping up to date. As we
> try and increase testing though, the stable release process
> gets to be a bit difficult. We often run into the problem where
> release .Z is officially released and then .Z+1 comes
> out as an -rc immediately after. Given Fedora release processes,
> we haven't always finished testing .Z by the time .Z+1 comes
> out. What to do in this situation really depends on what's in
> .Z and .Z+1 and how stable we think things are. This usually
> works out fine but a) sometimes we guess wrong and should have
> tested .Z more b) we're only looking to increase testing.
>
> What I'd like to see is stable updates that come on a regular
> schedule with a longer -rc interval, say Sunday with
> a one week -rc period. I understand that much of the current
> stable schedule is based on Greg's schedule. As a distro
> maintainer though, a regular release schedule with a longer
> testing window makes it much easier to plan and deliver something
> useful to our users. It's also a much easier sell for encouraging
> everyone to pick up every stable update if there's a known
> schedule. I also realize Greg is probably reading this with a very
> skeptical look on his face so I'd be interested to hear from
> other distro maintainers as well.
>

This has been a fairly recent problem. There was a roughly weekly
cadence for a very long time and that was pretty easy to work with.  I
know that some of these updates do fix embargoed security issues that
we don't find out are actual fixes until later, but frequently in
those cases, the fixes are pushed well before embargo lifts, and they
could be fit into a weekly cadence.  Personally I don't have a problem
with the 3 day rc period, but pushing 2 kernels a week can be a
problem for users. (skipping a stable update is also a problem for
users.)  What I would prefer is 1 stable update per week with an
exception for *serious* security issues, where serious would mean
either real end user impact or high profile lots of press users are
going to be wondering where a fix is.

Justin
