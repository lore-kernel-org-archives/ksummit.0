Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BF46B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 09:47:26 +0000 (UTC)
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8F0CE3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 09:47:25 +0000 (UTC)
Received: by lbbpo10 with SMTP id po10so121418095lbb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 02:47:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201507130038.01474.PeterHuewe@gmx.de>
References: <201507130038.01474.PeterHuewe@gmx.de>
Date: Mon, 13 Jul 2015 12:47:23 +0300
Message-ID: <CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
To: =?UTF-8?Q?Peter_H=C3=BCwe?= <PeterHuewe@gmx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 13, 2015 at 1:38 AM, Peter H=C3=BCwe <PeterHuewe@gmx.de> wrote:
> as we talked about recruiting in the other thread I realized that one thi=
ng
> that might reduce the entrance barrier a bit (apart from tooling and flow=
)
> would be proper documentation.

Newbies should not write documentation because they, by definition,
have little knowledge of the code. It will lead to many, many useless
and redundant comments like below whose only purpose is stealing
vertical whitespace:

    /**
     * is_module_percpu_address - test whether address is from module
static percpu
     * @addr: address to test
     *
     * Test whether @addr belongs to module static percpu area.
     *
     * RETURNS:
     * %true if @addr is from module static percpu area
     */

    bool is_module_percpu_address(unsigned long addr)
    {

I have counter suggestion:
* remove kernel-doc official status, remove generating scripts
  because it doesn't work,
* trim redundant and semi-redundant kernel-doc comments like this:

    /**
     * module_refcount - return the refcount or -1 if unloading
     *
     * @mod:        the module we're checking
     *
     * Returns:
     *      -1 if the module is in the process of unloading
     *      otherwise the number of references in the kernel to the module
     */
    int module_refcount(struct module *mod)
    {

("return reference count or -1 if module is being unloaded" is enough here)=
.

      Alexey
