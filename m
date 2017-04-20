Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94D87B3F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 14:47:38 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77AE01AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 14:47:37 +0000 (UTC)
Date: Thu, 20 Apr 2017 08:47:35 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170420084735.7ef1c3ef@lwn.net>
In-Reply-To: <1492695238.27758.19.camel@HansenPartnership.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan>
	<20170419163636.6747a232@lwn.net>
	<alpine.LSU.2.20.1704200037430.12121@cbobk.fhfr.pm>
	<20170420052316.GA24503@infradead.org>
	<1492695238.27758.19.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Christoph Hellwig <hch@infradead.org>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 20 Apr 2017 06:33:58 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> I think it's worth discussing this.  We accept a lot of patches because
> we can and because the change looks innocuous enough, but which don't
> actually have a tangible user visible benefit.  Should we actually have
> a net benefit threshold test we apply?

With regard to the documentation patches, the intended tangible
user-visible benefit is to turn a jumbled mess of a documentation
directory into a set of coherent manuals that are aimed at and readily
accessible to our different audiences (kernel developers, system
administrators, application developers, etc. as appropriate).

If we had always tossed the SCSI subsystem source into a single directory
along with SCTP, user-mode Linux, perf, half of the TTY drivers, and all
filesystems written before the second Bush administration, it would
certainly make for easier muscle-memory access for those of us who think
back nostalgically to installing from floppies.  But for some strange
reason we don't do that.

When code needs refactoring, we do so - when, as you said, there is a
tangible benefit.  The same applies to directory organization.  Though
that may not apply to Documentation/ since we never really got around to
an original factoring to refactor.

Anyway, you can see why I raised the issue.  I think that this process is
improving the documentation, making it more accessible, and making more
people interested in improving it.  But I have my hands plenty full of
other things and, if this work is really swimming against the current, it
would be good to know.

jon
