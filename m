Return-Path: <jason@lakedaemon.net>
Date: Sat, 9 Jul 2016 00:06:31 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160709000631.GB8989@io.lakedaemon.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jiri,

On Sat, Jul 09, 2016 at 12:35:09AM +0200, Jiri Kosina wrote:
> I'd like to see an attempt to make the stable workflow more oriented
> towards "maintainers sending pull requests" rather than "random people
> pointing to patches that should go to stable".

How does that differ from "Cc: stable.." ?  In my experience, it's
mostly the maintainers adding that tag after looking at the commit it
"Fixes", if the commit id was provided.  Admittedly, my exposure is
limited to ARM mvebu and irqchip for the most part.

Do you want pull requests in order to limit patches to only from
maintainers?  Or to include a series of patches that have had more
testing against specific kernel versions?

Do you have a sense of the specific regressions that cause people to
give up on -stable?

thx,

Jason.
