Return-Path: <mchehab@s-opensource.com>
Date: Sun, 25 Jun 2017 21:58:27 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20170625215827.77cfec11@vento.lan>
In-Reply-To: <CAFhKne_ajkMYKmf-GXC28c_h+O1c0_=SDq-OFEaHHTKs8Qkvpg@mail.gmail.com>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>
	<1779146.rtcHP5MkoH@aspire.rjw.lan>
	<20170624104142.70677fcb@vento.lan>
	<CAFhKne8ZttmqWYJToCw9EDywzeMdp=eiFpoZ+O5xrzmKnpA09Q@mail.gmail.com>
	<CAFhKne_W-EbjUd_Cm4kyBHrVK6K9r8Ss3gY0ogO1nztbQZYBEg@mail.gmail.com>
	<CAFhKne_ajkMYKmf-GXC28c_h+O1c0_=SDq-OFEaHHTKs8Qkvpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Sun, 25 Jun 2017 17:32:31 -0400
Matthew Wilcox <willy6545@gmail.com> escreveu:

> I find documentation comes in the following bins:
> 
> 1. User documentation (possible sub-split into "how to use this from kernel
> space" and "how to use this from user space")
> 2. Information for someone who's interested in modifying the code. Possibly
> including architectural considerations (eg locking), performance, ideas for
> future improvement, etc.
> 3. Random swearing and abuse
> 
> I think the second and third categories of documentation should be kept out
> of the kernel books and left as plain comments by the code.

Having comments together the code is good, but sometimes it is not enough.

Just as an example, last week I received two patch series, from
different developers, that didn't get right how to collect quality
measurements from digital TV frontends. The functions they use are
documented via kernel-doc, and they looked on other drivers as examples.
Still, that was not not clear enough, as both developers didn't quite
get some things.

So, I had to write a few patches to actually explain how a
frontend driver is expected to collect statistics:
	https://patchwork.linuxtv.org/patch/42081/

And, today, I complemented with two additional texts:

	https://patchwork.linuxtv.org/patch/42115/
	https://patchwork.linuxtv.org/patch/42116/

As those explanations complement the kernel-doc macros from
dvb_frontend.h, they need cross references, in order for the
driver developer to better understand how things are connected,
and to avoid the need of having to explain everything that it is
already documented via kernel-doc tags, as can be seeing at:

	https://www.infradead.org/~mchehab/kernel_docs/media/kapi/dtv-core.html#digital-tv-frontend-kabi


That's just today's example. There are plenty of cases where we
need to add images and complex tables, etc that just don't fit
well as plain text.

Thanks,
Mauro
