Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E331782D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 15:53:22 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6EB391F9F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 15:53:22 +0000 (UTC)
Message-ID: <1401119598.3303.6.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 26 May 2014 19:53:18 +0400
In-Reply-To: <20140525222923.GW15585@mwanda>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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


On Mon, 2014-05-26 at 01:29 +0300, Dan Carpenter wrote:
> I think SCSI is almost uniquely difficult for this.  The drivers are so
> big and different from each other.  Competitors aren't going to review
> each other's code.

To be honest, my review standard for drivers is does it pass checkpatch
(for an ignored subset of warnings, like lines over 80 characters), does
it compile individually and when I look through the patch does anything
leap out as wrong.  That's by no means an extensive review, but it's
about all that you can do without understanding the internals of the
driver.  I figure mostly that if something goes wrong within a big
driver then in won't affect other drivers, so the manufacturer would
only have themselves to blame and thus be nicely motivated to fix it.

We do have a higher standard of review for shared components (like the
transport classes or libsas).

> With almost every other subsystem, there is a second in command who
> could take over if needed.  I don't know anyone who could do your job if
> you decided to go back to Cambridge for an MBA.

An MBA isn't really an essential qualification for a CTO, so I think
you're safe on that one.

>   I did a:
> 
> git log --after=2013-01-01 drivers/scsi | grep '\-by\:' | sort | uniq -c | sort -rn
> 
> There are some smart people who work on vendor code but everyone seems
> focussed on their own code.

Well, we are trying to encourage more reviewers and backup maintainers
in SCSI ...

James
