Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F9139C0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 08:57:39 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 96DBB14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 08:57:38 +0000 (UTC)
Date: Fri, 4 Aug 2017 10:57:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Jiri Kosina <jikos@kernel.org>
In-Reply-To: <alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
Message-ID: <alpine.DEB.2.20.1708041056510.2950@hadrien>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Andy Lutomirski <luto@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Fri, 4 Aug 2017, Jiri Kosina wrote:

> On Thu, 3 Aug 2017, Theodore Ts'o wrote:
>
> > One way that we could try to make things better is by having some kind
> > of semi-automated system which monitors changes in include/uapi/*.h in
> > linux-next.
>
> It's unfortunately just uapi though, and for sysfs it's a bit more
> difficult to define a pathname pattern to watch for.

I think that Michael Kerrisk has a big list of regexps in this direction.

julia
