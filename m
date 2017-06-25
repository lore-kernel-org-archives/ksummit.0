Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Matthew Wilcox <willy6545@gmail.com>,
	Mauro Carvalho Chehab <mchehab@s-opensource.com>
Date: Sun, 25 Jun 2017 23:42:20 +0200
Message-ID: <9331130.3GseHRJqRx@aspire.rjw.lan>
In-Reply-To: <CAFhKne_ajkMYKmf-GXC28c_h+O1c0_=SDq-OFEaHHTKs8Qkvpg@mail.gmail.com>
References: <20170623123936.42dab05f@lwn.net>
	<CAFhKne_W-EbjUd_Cm4kyBHrVK6K9r8Ss3gY0ogO1nztbQZYBEg@mail.gmail.com>
	<CAFhKne_ajkMYKmf-GXC28c_h+O1c0_=SDq-OFEaHHTKs8Qkvpg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sunday, June 25, 2017 05:32:31 PM Matthew Wilcox wrote:
> I find documentation comes in the following bins:
> 
> 1. User documentation (possible sub-split into "how to use this from kernel
> space" and "how to use this from user space")
> 2. Information for someone who's interested in modifying the code. Possibly
> including architectural considerations (eg locking), performance, ideas for
> future improvement, etc.
> 3. Random swearing and abuse

There also is information on various frameworks that driver writers are expected
to use and honestly various mixtures of that with 1. above.

Mutual exclusion mechanisms also need to be documented properly IMO and so on.

> I think the second and third categories of documentation should be kept out
> of the kernel books and left as plain comments by the code.
> 
> On 24 Jun 2017 9:41 am, "Mauro Carvalho Chehab" <mchehab@s-opensource.com>
> wrote:
> 
> Yeah, one of the problems with existing documentation is that,
> sometimes, the same document describes both userspace-relevant
> info and kernelspace APIs.

Right.

But, alas, those things happen to be related, especially when framework-provided
sysfs attributes and similar come into play.  With the current layout of things
it sometimes is hard to avoid documenting the same thing in two different
places, risking that the two descriptions of the same thing will diverge in the
future eventually.

Moreover, does debugfs fall into "user documentation" or "developer documentation",
for example?

And generally documentation on how to diagnose problems for that matter?
