Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 67961918
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 28 Jul 2014 18:52:37 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1162C20259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 28 Jul 2014 18:52:36 +0000 (UTC)
Message-ID: <53D69BEC.3030509@zytor.com>
Date: Mon, 28 Jul 2014 11:52:28 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Triplett <josh@joshtriplett.org>, David Howells <dhowells@redhat.com>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
In-Reply-To: <20140725232429.GD19618@jtriplet-mobl1>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Should we force include <linux/err.h> when
 compiling all .c files?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/25/2014 04:24 PM, Josh Triplett wrote:
>>
>> However, passing errors in pointers is so very common within the kernel, it
>> might worth be adding linux/err.h to the automatically included stuff.
> 
> ~/src/linux$ git grep -l 'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST' -- '*.c' | wc -l
> 4467
> ~/src/linux$ find -name '*.c' | wc -l
> 20430
> 
> Functionality used by less than a quarter of the source files in the
> kernel doesn't make sense to automatically include.  You have a clear
> test that shows whether a file uses this functionality, which would
> allow an automated patch adding the necessary #include lines.
> 
> That does raise an interesting general issue, though: when a change to
> the kernel would involve patching several thousand files, and would
> potentially produce a huge number of conflicts (and a huge number of
> patches if broken out by subsystem) if fed through the normal process,
> but can be described by a very short script that requires no manual
> intervention, might it make sense to have a clear procedure for saying
> "Hey Linus, can you please run this script on top-of-tree and commit the
> result?"?
> 

We have such a clear procedure.  It involves pre-arranging with Linus
*before the merge window begins* to run the script in question
*immediately before releasing rc1*.

	-hpa
