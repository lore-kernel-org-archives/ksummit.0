Return-Path: <corbet@lwn.net>
Date: Sat, 9 Jul 2016 16:51:20 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20160709165120.61c10464@lwn.net>
In-Reply-To: <20160709145748.GC8989@io.lakedaemon.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<20160709145748.GC8989@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 9 Jul 2016 14:57:48 +0000
Jason Cooper <jason@lakedaemon.net> wrote:

> It would be helpful if we could get a set of examples of regressions
> which have occurred in the past.

FWIW, I recently looked at this, using the Fixes: tags from -stable
patches:

	https://lwn.net/Articles/692866/

Of course, less than half of the -stable changesets carry Fixes: tags, so
the results are necessarily approximate.

jon
