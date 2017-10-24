Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E80CC94
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 23:41:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0042.hostedemail.com
	[216.40.44.42])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id AAE601DE60
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 23:41:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 90E211800D669
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 23:41:53 +0000 (UTC)
Message-ID: <1508888508.1955.16.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, James Bottomley
	<James.Bottomley@hansenpartnership.com>
Date: Tue, 24 Oct 2017 16:41:48 -0700
In-Reply-To: <CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2017-10-24 at 16:03 -0700, Kees Cook wrote:
> On Fri, Oct 6, 2017 at 8:27 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
> > > Appendix: Other topics that were brought up
> > > [...]
> > > Developing across multiple areas of the kernel
> > 
> > I've got a couple of extra possibilities
> > [...]
> > 2) Trivial patches (again).
> 
> Given that the "trivial patches" topic's discussion ended up boiling
> down to a discussion about developing across multiple areas of the
> kernel, maybe we should make space for a "tree-wide changes"
> discussion? Even after the earlier thread about it, I tripped all over
> this in the last couple months while doing timer conversions, so I
> would at least have some more strong opinions on the subject. ;)

It's a ripe area (like months old limburger cheese) for discussion.

There's currently no good way to do tree-wide changes.
