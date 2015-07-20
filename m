Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4264E97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 08:44:28 +0000 (UTC)
Received: from mrelay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC7F9E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 08:44:27 +0000 (UTC)
Date: Mon, 20 Jul 2015 01:44:20 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150720084420.GA11454@x>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1437376105.8968.14.camel@HansenPartnership.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Mon, Jul 20, 2015 at 08:08:25AM +0100, James Bottomley wrote:
> the mechanical one file at a time fixing
> X.  I think we need someone to be the gatekeeper and review and apply
> the script in one go.

I often find myself writing this kind of tree-wide fix, and I find it
frustrating that it can't get merged as a unit; that would avoid the
inevitable pile of merge conflicts, as well.  For anything that can be
reliably applied as a script, I'd love to see it actually run as a
script and the result committed.

- Josh Triplett
