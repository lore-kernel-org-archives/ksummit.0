Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D719A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:24:14 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 97A9D209
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:24:13 +0000 (UTC)
Date: Tue, 4 Aug 2015 11:24:11 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150804112411.7bbba71f@lwn.net>
In-Reply-To: <6756795.jjv2YY7pQg@avalon>
References: <20150801164142.653012af@lwn.net>
	<1893963.CjFnBCekyb@vostro.rjw.lan>
	<20150803083311.5abd23f6@lwn.net> <6756795.jjv2YY7pQg@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 04 Aug 2015 15:50:33 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> Maybe we just need to 
> tighten the review process and push harder for documentation, at the risk of 
> rejecting useful contributions. That's not a new problem though.

It's so not-new that this idea has come up at a few kernel summits in the
past.  But better documentation is not something we can wish into
existence; it's like saying we'll tighten the process to require more
code review.  

That's why "how do we get more documentation?" wasn't really the question
I posed at the beginning.  We get it the way we get more code: get
companies to pay people to write it.  I don't think we can really make
that happen at the kernel summit.

We *can* maybe think about how we want our tools to look to make the
process of writing and maintaining documentation easier, though.  Tools
won't solve the problem either, but maybe we can at least reduce the
impedance somewhat.

jon
