Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB708B5F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 14:39:55 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62404143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 14:39:55 +0000 (UTC)
Date: Wed, 26 Apr 2017 16:15:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20170426141503.GB665@lunn.ch>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda>
	<yq1h91be0do.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <yq1h91be0do.fsf@oracle.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	David Miller <davem@davemloft.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Another gripe of mine wrt. big vs. small is that almost all vendor
> driver updates come in the form of "30+ patches to update the driver to
> version XYZ". Often a week before the merge window. And then they wonder
> why nobody reviews them. Well, duh. That's a huge chunk of time for
> somebody to commit.

> Anyway. Just being the devil's advocate here. It just seems there's a
> consistent "maintainers are bad/lazy/unresponsive" theme going on. But
> for better or for worse, patch submitters are often presenting their
> work in ways that are completely indigestible.

What works well with netdev is that the maintainers simply NACK the
patches within a day and ask them to be submitted in smaller batches.

In my opinion, part of being a Maintainer is educating patch
submitters how the process should work and how best to present their
work so that it can be reviewed. It takes a bit of effort, but the
returns are worth it.

	Andrew
