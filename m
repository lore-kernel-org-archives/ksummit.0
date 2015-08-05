Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 472F37AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:08:10 +0000 (UTC)
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 143CF166
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:08:09 +0000 (UTC)
Received: by wicgj17 with SMTP id gj17so201147750wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Aug 2015 10:08:07 -0700 (PDT)
Message-ID: <55C242F4.7090005@gmail.com>
Date: Wed, 05 Aug 2015 19:08:04 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: Peter Huewe <peterhuewe@gmx.de>, Marcel Holtmann <marcel@holtmann.org>,
	Michael Ellerman <mpe@ellerman.id.au>
References: <20150801164142.653012af@lwn.net>	<1438672367.9418.3.camel@ellerman.id.au>	<9B190076-263A-4C51-AFA4-A1D7FD403BC3@holtmann.org>
	<BC939929-C5D1-4239-A9B8-E9D49CD4E04E@gmx.de>
In-Reply-To: <BC939929-C5D1-4239-A9B8-E9D49CD4E04E@gmx.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/04/2015 10:33 AM, Peter Huewe wrote:
> Hi
> 
> Am 4. August 2015 09:42:55 MESZ, schrieb Marcel Holtmann <marcel@holtmann.org>:
>> Hi Michael,
>>
>>>> Markdown in one of its many forms might be a good alternative here. 
>> I'm
>>>> also somewhat attracted by Sphinx, which is designed for documenting
>> code
>>>> already and could probably be made to work well with our existing
>> kerneldoc
>>>> comments without a whole lot of trouble.  The Sphinx idea, though,
>> is
>>>> hobbled by the inconvenient fact that I've not had the time to
>> develop it
>>>> far enough to even have a vague idea of whether it would make
>> real-world
>>>> sense.
>>>
>>> I'd vote for Markdown. It's very unobtrusive, reads nicely as plain
>> text, and
>>> all the young kids know it from writing Github README.md files.
>>
>> actually AsciiDoc might be something to look into as well.
>>
> I'm also in for AsciiDoc, as it also allows easy generation of Pdfs
> and html files, with chapters and all that fancy stuff.
> 
> (Probably the reason why docbook was chosen back then, compared to
> the plaintext files)

>From a man-pages point of view, the discussion of tooling is interesting.
For some years now I've contemplated a switch from groff's man macros,
since some people do not like to work with them (although the basics are
pretty simple, IMO). If there was a concerted movement to Asciidoc or
Markdown for kernel docs, I'd be willing to invest some effort in the
feasibility of switching man-pages to the same format. I'm not
knowledgeable in either of those tools, but at a first glance,
Asciidoc seems more interesting, since it seems to embrace a wider
variety of output formats, in particular, PDF and Linux man-page
macros (and also TeX). It doesn't appear that Markdown can do that.
I know even less about Sphinx, although its output capabilities,
as described at http://sphinx-doc.org/index.html , seem interesting also.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
