Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 782DF996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 12:21:15 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 77A3D1FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 12:21:14 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 26 May 2014 14:38:18 +0200
Message-ID: <1849144.CmpsQG9Pds@vostro.rjw.lan>
In-Reply-To: <CAErSpo4XtYN2x6LWcpvdtgC-eXu0FSnZRp2tkwAGCD9eak5upw@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<1400952709.6956.50.camel@dabdike.int.hansenpartnership.com>
	<CAErSpo4XtYN2x6LWcpvdtgC-eXu0FSnZRp2tkwAGCD9eak5upw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Saturday, May 24, 2014 10:15:52 PM Bjorn Helgaas wrote:
> On Sat, May 24, 2014 at 11:31 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:

[cut]

> Better tools are always nice, but I agree they won't address the "lack
> of reviewers" problem.  I'm a little concerned that the real problem
> is that the complexity of the system makes it unapproachable except to
> the few who can afford to work in one area full-time (I'm talking
> about the complexity of accumulated warts, not the unavoidable
> complexity of the hardware itself).

I agree.

If a change is deep enough, you need to know a lot about the code that's
already there to review it, and not just about one subsystem usually, and you
also need to know *why* it is there which in many cases is undocumented and may
be specific to certain special cases.

Rafael
