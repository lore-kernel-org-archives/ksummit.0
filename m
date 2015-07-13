Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55F64BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:01:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F098B11B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:01:52 +0000 (UTC)
Message-ID: <55A3E0EF.6090402@infradead.org>
Date: Mon, 13 Jul 2015 09:01:51 -0700
From: Randy Dunlap <rdunlap@infradead.org>
MIME-Version: 1.0
To: Alexey Dobriyan <adobriyan@gmail.com>, =?UTF-8?B?UGV0ZXIgSMO8d2U=?=
	<PeterHuewe@gmx.de>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
In-Reply-To: <CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/13/15 02:47, Alexey Dobriyan wrote:
> On Mon, Jul 13, 2015 at 1:38 AM, Peter Hüwe <PeterHuewe@gmx.de> wrote:
>> as we talked about recruiting in the other thread I realized that one thing
>> that might reduce the entrance barrier a bit (apart from tooling and flow)
>> would be proper documentation.
> 
> Newbies should not write documentation because they, by definition,
> have little knowledge of the code. It will lead to many, many useless
> and redundant comments like below whose only purpose is stealing
> vertical whitespace:
> 
>     /**
>      * is_module_percpu_address - test whether address is from module
> static percpu
>      * @addr: address to test
>      *
>      * Test whether @addr belongs to module static percpu area.
>      *
>      * RETURNS:
>      * %true if @addr is from module static percpu area
>      */
> 
>     bool is_module_percpu_address(unsigned long addr)
>     {
> 
> I have counter suggestion:
> * remove kernel-doc official status, remove generating scripts
>   because it doesn't work,

I have no problem with that suggestion.  scripts/kernel-doc is fragile and
either needs lots of continuous help or can be discarded.

As I have said in the past, the main thing is that there should be decent
documentation for (new) interfaces.  It doesn't need to be kernel-doc.


> * trim redundant and semi-redundant kernel-doc comments like this:
> 
>     /**
>      * module_refcount - return the refcount or -1 if unloading
>      *
>      * @mod:        the module we're checking
>      *
>      * Returns:
>      *      -1 if the module is in the process of unloading
>      *      otherwise the number of references in the kernel to the module
>      */
>     int module_refcount(struct module *mod)
>     {
> 
> ("return reference count or -1 if module is being unloaded" is enough here).


-- 
~Randy
