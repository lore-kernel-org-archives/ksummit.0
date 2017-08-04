Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B461B8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 04:16:14 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C5B914D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 04:16:14 +0000 (UTC)
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DD32C22BE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 04:16:13 +0000 (UTC)
Received: by mail-ua0-f177.google.com with SMTP id 80so2544406uas.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 03 Aug 2017 21:16:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170804013010.GA425@kroah.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804013010.GA425@kroah.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 3 Aug 2017 21:15:52 -0700
Message-ID: <CALCETrXHFSLQk5VaZsOA=pSPDW7uJ08Dg_oPLxHAw6pEnsGYwA@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 3, 2017 at 6:30 PM, Greg KH <greg@kroah.com> wrote:
> On Thu, Aug 03, 2017 at 06:16:44PM -0700, Andy Lutomirski wrote:
>> I'm wondering if there are other models that could work.  I think it
>> would be nice for us to be able to land a kernel in Linus tree and
>> still wait a while before stabilizing it.  Rust, for example, has a
>> strict policy for this that seems to work quite well.
>
> What does Rust do here?
>

Rust has named unstable features.  In order to use them, you need to
declare, with a special annotation, your desire to use the named
feature.  You also need to be running a nightly build of Rust --
stable versions will refuse to compile code that requests unstable
features.
