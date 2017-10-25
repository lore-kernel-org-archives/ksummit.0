Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DA8CBA7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 16:42:24 +0000 (UTC)
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 553594F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 16:42:23 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 4EA8E48698D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 18:17:07 +0200 (CEST)
Date: Wed, 25 Oct 2017 09:16:56 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20171025161655.psufkrr6u62ivmba@jtriplet-mobl2.jf.intel.com>
References: <1508924843.4165.6.camel@wdc.com>
	<CACVxJT_oJsfEDkcr2iQKerBTXXVkt-dv-7sLpihLGTTqVhJhMQ@mail.gmail.com>
	<1508937108.29215.4.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1508937108.29215.4.camel@infradead.org>
Cc: "leonro@mellanox.com" <leonro@mellanox.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors
 to annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 25, 2017 at 03:11:48PM +0200, David Woodhouse wrote:
> On Wed, 2017-10-25 at 14:40 +0200, Alexey Dobriyan wrote:
> > On 10/25/17, Bart Van Assche <Bart.VanAssche@wdc.com> wrote:
> > > 
> > > I think we need a way to encourage driver authors
> > > to pay attention to endianness annotations,
> > typedef struct {
> >         uint32_t _;
> > } __le32;
> 
> I actually did that in JFFS2 years ago; before sparse could do it. It
> was very useful.
> 
> I'd really like to have proper compiler support for big-endian and
> little-endian integers too. We're half-way there now with
> __builtin_bswap32() et al, and compilers can optimise things properly
> (instead of the opaque inline asm we had before I cleaned that up).
> 
> But being able to just mark a given integer storage as big- or little-
> endian and have all loads and stores *automatically* do the right thing
> would be extremely useful in many cases.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59852 for a proposal to
implement Sparse's __attribute__((bitwise)) in GCC. The GCC developers
are amenable, if someone's willing to write a patch.
