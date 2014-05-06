Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3987D8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:21:54 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2C5720111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:21:52 +0000 (UTC)
Message-ID: <1399404095.4218.51.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: josh@joshtriplett.org
Date: Tue, 06 May 2014 21:21:35 +0200
In-Reply-To: <20140506175842.GF20776@cloud>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-06 at 10:58 -0700, josh@joshtriplett.org wrote:

> We need to have better processes for vetting new syscalls and ABIs far
> more carefully than we currently do.

How far would you want to take this? New syscalls is one thing, but
there are frequently additions to "subsystem APIs", e.g. in networking,
that aren't really syscalls but part of netlink etc. Trying to vet all
of that might very well end up just overwhelming the process, but on the
other hand it's still something that probably should be done in some
form.

johannes
