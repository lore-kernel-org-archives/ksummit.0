Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8CB41BB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:13:02 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2CCF619D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:13:02 +0000 (UTC)
Date: Mon, 13 Jul 2015 10:12:55 -0700
From: josh@joshtriplett.org
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20150713171255.GA4816@cloud>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
	<20150713140752.GA15582@gmail.com>
	<1436801960.6901.19.camel@HansenPartnership.com>
	<20150713160541.GC15582@gmail.com>
	<CAMuHMdWbc-EsdRFukddFWak0G+ixUV8dzOFJQpf+tjzS3m6rBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWbc-EsdRFukddFWak0G+ixUV8dzOFJQpf+tjzS3m6rBA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 13, 2015 at 06:46:42PM +0200, Geert Uytterhoeven wrote:
> On Mon, Jul 13, 2015 at 6:05 PM, Konstantin Ryabitsev
> <konstantin@linuxfoundation.org> wrote:
> > - I'm willing to bet there are lots of removable storage floating around
> >   people's workdesks and travel bags that contain full copies of their
> >   homedirs for backup purposes (tell me it ain't true!).
> 
> Given how easy it is these days to use luksformatted removable media,
> there's not really an excuse for that.

Or "tar ... | gpg", or duplicity, or any number of encrypted backup
solutions.  Keeping around any unencrypted copy of any of your keys is
irresponsible.

- Josh Triplett
