Return-Path: <gregungerer@westnet.com.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35E69A88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 23:35:22 +0000 (UTC)
Received: from icp-osb-irony-out5.external.iinet.net.au
	(icp-osb-irony-out5.external.iinet.net.au [203.59.1.221])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 47D3816F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 23:35:20 +0000 (UTC)
To: David Howells <dhowells@redhat.com>, Andy Lutomirski <luto@amacapital.net>
References: <CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
	<CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<31033.1485168526@warthog.procyon.org.uk>
	<5024.1485203788@warthog.procyon.org.uk>
From: Greg Ungerer <gregungerer@westnet.com.au>
Message-ID: <811e58f6-0475-e9cd-f136-9a4504073df1@westnet.com.au>
Date: Tue, 24 Jan 2017 09:26:03 +1000
MIME-Version: 1.0
In-Reply-To: <5024.1485203788@warthog.procyon.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Josh Armour <jarmour@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 24/01/17 06:36, David Howells wrote:
> Andy Lutomirski <luto@amacapital.net> wrote:
[snip]
>>>  (6) NOMMU could be particularly tricky.  For ELF-FDPIC at least, the stack
>>>      size is set in the binary.  OTOH, you wouldn't have to relocate the
>>>      pre-loader - you'd just mmap it MAP_PRIVATE and execute in place.
>>
>> For nommu, forget about it.
> 
> Why?  If you do that, you have to have bimodal binfmts.  Note that the
> ELF-FDPIC binfmt, at least, can be used for both MMU and NOMMU environments.
> This may also be true of FLAT.

It is true for FLAT as well, they can run on both MMU an noMMU.

Regards
Greg
