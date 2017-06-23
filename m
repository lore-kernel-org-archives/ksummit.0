Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E038FAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 23:16:51 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DD8381FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 23:16:50 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jonathan Corbet <corbet@lwn.net>
Date: Sat, 24 Jun 2017 01:09:28 +0200
Message-ID: <8342944.hYkokseh5H@aspire.rjw.lan>
In-Reply-To: <20170623123936.42dab05f@lwn.net>
References: <20170623123936.42dab05f@lwn.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, June 23, 2017 12:39:36 PM Jonathan Corbet wrote:
> The docs pull for 4.13 will include the conversion of the last DocBook
> template files, thanks mostly to Mauro.  That's the good news; the bad
> news is that I get to explain a lot of merge conflicts to Linus, most of
> which result from other trees reaching into Documentation/ and changing
> files that have been converted.
> 
> I can continue in this mode, but I do wonder if there's a better way out
> there somewhere.  So I think there would be value in a session on the
> maintenance of "subsystems" that don't fit neatly into the kernel
> source-tree hierarchy.
> 
> We could also talk about the state of the RST conversion and whether/how
> we'd like it to continue.  Perhaps we would rather, as Peter recently
> suggested, "just delete all that nonsense and go back to 80 column 7bit
> ASCII"?  In general, what do the maintainers want from the documentation
> subsystem, and how can we make it easy to continue improving our docs?

For one, I'm going to continue converting PM documentation to RST and I would
not welcome deleting the existing .txt one until that is complete.

Same goes for ACPI, pretty much.

Also I don't expect too many documentation-related merge conflicts in the PM
case going forward.

Thanks,
Rafael
