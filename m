Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B2F4988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 12:34:07 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A668201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 12:34:05 +0000 (UTC)
Date: Thu, 5 Jun 2014 08:33:59 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Greg KH <greg@kroah.com>
Message-ID: <20140605123359.GA32005@thunk.org>
References: <20140604130646.GA25092@thunk.org> <538F46CA.70303@infradead.org>
	<20140604165224.GA3127@thunk.org> <538FEE06.9060902@infradead.org>
	<20140605044040.GB2363@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140605044040.GB2363@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] If you are using gmail,
	check your spam folders
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 04, 2014 at 09:40:40PM -0700, Greg KH wrote:
> That not good at all, and is strange, and not something that I want to
> see on my end.
> 
> Try sending me email directly to my lf.org account.  If it bounces, send
> me the full headers to this account and I'll work with the lf.org admins
> to figure it out.

I'vve lookedat the blocked messages which Randy sent me, and that's
something yet something else.  This particular issue is specific to
infradead.org:

  torvalds@linux-foundation.org
    SMTP error from remote mail server after end of data:
    host ASPMX.L.GOOGLE.COM [2607:f8b0:4001:c05::1b]:
    550-5.7.1 [2001:4978:20e::2      12] Our system has detected that this message
    550-5.7.1 is likely unsolicited mail. To reduce the amount of spam sent to
    550-5.7.1 Gmail, this message has been blocked. Please visit
    550-5.7.1 http://support.google.com/mail/bin/answer.py?hl=en&answer=188131 for
    550 5.7.1 more information. z2si16384135icq.90 - gsmtp
  akpm@linux-foundation.org

Doing a quick check, courtesy of http://mxtoolbox.com/blacklists.aspx,
it looks like merlin.infradead.org is on the SORBS spam list:

Problem hostnames/domains (could cause email problems.)
2 "Spamvertised" entries [22:09:23 01 Nov 2011 GMT+00].	
205.233.59.134 - 2 entries [22:09:23 01 Nov 2011 GMT+00].	

For more details, you might want to check:

	http://www.sorbs.net/delisting/overview.shtml

It looks like in November of last year, one of SORBS spamtraps
received spam mail sent from infradead.org.  You might try submitting
a delisting request to SORBS.  This might hopefully solve the problem.

  	    	       	       	    - Ted
