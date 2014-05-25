Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 614E426
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 22:29:45 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E686D1FAB5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 22:29:44 +0000 (UTC)
Date: Mon, 26 May 2014 01:29:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140525222923.GW15585@mwanda>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I think SCSI is almost uniquely difficult for this.  The drivers are so
big and different from each other.  Competitors aren't going to review
each other's code.

With almost every other subsystem, there is a second in command who
could take over if needed.  I don't know anyone who could do your job if
you decided to go back to Cambridge for an MBA.  I did a:

git log --after=2013-01-01 drivers/scsi | grep '\-by\:' | sort | uniq -c | sort -rn

There are some smart people who work on vendor code but everyone seems
focussed on their own code.

regards,
dan carpenter
