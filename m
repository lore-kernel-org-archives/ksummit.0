Return-Path: <Julia.Lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CADE89F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:08:52 +0000 (UTC)
Received: from isis.lip6.fr (isis.lip6.fr [132.227.60.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEA2F156
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:08:51 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Fri, 26 Aug 2016 14:08:49 +0200
From: Julia Lawall <Julia.Lawall@lip6.fr>
To: Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <20160826112635.GA27627@kroah.com>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
Message-ID: <c87b9e9ad009d259f500637851f18f91@newmail.lip6.fr>
Cc: ksummit-discuss@lists.linuxfoundation.org, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Le 26.08.2016 13:26, Greg KH a écrit :
> On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
>>    - Making checkpatch check for (some) of the stable kernel rules
>>    (and possibly recommend adding the stable@ tag in certain cases?).
>>      - Depends on: making checkpatch sane again.
> 
> This sounds interesting.  What do you mean by "sane"?  "sane" as in
> rewriting it so that someone who isn't a perl master can modify it?  Or
> "sane" as in "don't be so pedantic about things that don't matter"?

Wouldn't that require interpreting the log message as well?

julia
