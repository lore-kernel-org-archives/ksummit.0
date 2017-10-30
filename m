Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59B61BFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 22:36:45 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A121A4CD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 22:36:44 +0000 (UTC)
Date: Tue, 31 Oct 2017 06:36:35 +0800 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: "greg@kroah.com" <greg@kroah.com>
In-Reply-To: <20171030214301.GA10043@kroah.com>
Message-ID: <alpine.DEB.2.20.1710310635230.1973@hadrien>
References: <20171029100816.pmq5dpmck4cclmdw@thunk.org>
	<1509385352.3660.35.camel@wdc.com>
	<20171030212057.GB7379@kroah.com>
	<1509398856.27259.26.camel@wdc.com>
	<20171030214301.GA10043@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit 2017 Feedback Thread
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> > How should a developer decide which project
> > to add new tests to: 0-day, ltp (Linux Test Project), ktest, xfstests, blktests
> > or any other Linux kernel testing project that I am not aware of?
>
> It depends on what type of test you are wanting to add.  And you forgot
> kselftest :)

I think that 0-day takes tests from elsewhere.  You don't add tests to it.

julia
