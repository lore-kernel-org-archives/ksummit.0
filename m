Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2FBC785D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 13:06:48 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A71401FFEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 13:06:47 +0000 (UTC)
Date: Wed, 4 Jun 2014 09:06:46 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140604130646.GA25092@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] If you are using gmail, check your spam folders
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

The first round of invites for the kernel summit was sent out over the
weekend.

Unfortunately, it's come to my attention that at least two people who
are using GMail had their invites trapped as spam.  This is despite
the fact that I went to careful lengths to make sure that the
invitation passed both SPF and DKIM checks.  A forwarded message from
Greg K-H from his Gmail spam folder confirmed that whatever got
GMail's anti-spam filters upset, it wasn't SPF or DKIM.  (The From
address was tytso@thunk.org, specifically so the SPF would pass, and
so the SPF identity would == the DKIM identity.)

Sigh.  Maybe there's some Nigerian scam involving inviting people to
Kernel Summits, or some such.  :-(

I'm trying to investigate this internally inside Google, but in the
meantime, if you are using Gmail as your mail reader, plesae check
your spam filters.  I apologize in advance for the inconvenience.

     	  	      		   	   - Ted
