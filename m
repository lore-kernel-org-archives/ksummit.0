Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D366B282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 19 Jul 2015 22:40:09 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F129B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 19 Jul 2015 22:40:09 +0000 (UTC)
Date: Sun, 19 Jul 2015 15:40:01 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150719224000.GA9026@x>
References: <1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 20, 2015 at 12:19:56AM +0200, Jiri Kosina wrote:
> I.e. I might propose a a slightly controversial topic, going a bit the 
> other direction than the whole "motivating newcomers" discussion: how to 
> get rid of useless submissions that are slowing maintainers down?
> 
> Should we stop publishing all the statistics? I believe there is no 
> question that those are one of the primary drivers of useless submissions. 
> Once maintainers get DoSed by submissions of wrong and/or useless patches 
> that eat non-negligible amount of their time, we're in trouble.

I don't think it's the statistics that are the primary driver of such
contributions.  Rather, I would suggest that it's so non-trivially
difficult to follow the substantial volume of process needed to get
something into the kernel that it's worth doing a trial run with a
trivial change before trying to do something of substance.

And fixes for certain classes of compiler or sparse warnings have value
themselves.

- Josh Triplett
