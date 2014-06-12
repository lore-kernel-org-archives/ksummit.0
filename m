Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 01508847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 02:48:46 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4AC841F951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 02:48:44 +0000 (UTC)
Date: Wed, 11 Jun 2014 22:48:42 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140611224842.2a011256@gandalf.local.home>
In-Reply-To: <5398E4A8.9080200@roeck-us.net>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<5398E4A8.9080200@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 11 Jun 2014 16:22:16 -0700
Guenter Roeck <linux@roeck-us.net> wrote:


> 
> I understand, but personally I don't have much problem with code as long
> as it compiles. I am more concerned with code that doesn't compile and
> no one cared for years.

Matters what your definition of "doesn't compile" is.

You may not have the right config option set to make it compile.
randconfig builds trigger failed compiles quite often. Is that code
worth removing?

As most people test allyesconfig and allmodconfig quite a bit, I'm not
sure what code you are talking about. Basically everything that gets
enabled does compile.

Of course, if you set something to CONFIG_BROKEN and no one complains
for a few years, that's worth nuking.

-- Steve
