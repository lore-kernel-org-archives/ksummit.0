Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 320986C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 06:00:28 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16A137D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 06:00:26 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
Date: Fri, 22 Jul 2016 08:00:24 +0200
MIME-Version: 1.0
In-Reply-To: <25598.1469113525@warthog.procyon.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/21/2016 05:05 PM, David Howells wrote:
> I know it's not precisely what you're asking about, but there are a number of
> types I would like to see:
> 
>  (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
>      long when you want to deploy a flags field with which you're going to use
>      test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
>      because you can't use bits 32-63 as they might not exist.
> 
>      Some arches, x86_64 and ppc64 for example, can do 32-bit atomic ops, so
>      we could make the field smaller in some cases.
> 
>      We have a *lot* of flags fields in the kernel, so I wonder if we could
>      actually save any space.
> 
>      I seem to remember that the argument is (or was) that the type must be
>      the natural word size of the machine, but how true is that in actuality?
> 
>  (2) Differentiate non-BH spinlocks and BH spinlocks by type.
> 
>      It seems like you can't mix BH and non-BH ops on a spinlock without
>      lockdep barking.  If that's the case, let's make this a compile-time
>      check.
> 
>  (3) Let's use bool a lot more for boolean values as the compiler might be
>      able to make better choices with it.
> 
> 
> And whilst we're at it, a function that I'd like to see:
> 
>  (1) on_list() in addition to list_empty() (and similar for other list types).
> 
>      I know this would be kind of redundant as is would be implemented exactly
>      the same as list_empty() - but semantically you're asking a different
>      question.
> 
Actually that's one thing on my long-term to-do list: stricter range
checking for kernel functions.
enums are an obvious way to address that, but there is a broad range of
functions which return an errno value without ever exhausting the entire
errno range.
Which makes it really hard from the calling function to figure out which
errno values are legit and which can be considered an error.

If we had a programmatic way of addressing that we could
a) validate the usage of those functions
and
b) easily do error injection with systemtap as we would know which
values the systemtap function should return

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
