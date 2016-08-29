Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B46E89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:16:57 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01BDECB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:16:56 +0000 (UTC)
Date: Mon, 29 Aug 2016 10:16:51 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20160829171651.GA27257@cloud>
References: <1472330452.26978.23.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
	<20160829071515.wqlpjccq7a3vk7u6@piout.net>
	<5149968.BflLUdM3a8@wuerfel> <1472474879.3425.30.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1472474879.3425.30.camel@perches.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Sasha Levin <levinsasha928@gmail.com>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 29, 2016 at 05:47:59AM -0700, Joe Perches wrote:
> I generally don't run it on my own patches, mostly out
> of possibly misplaced confidence in my own adherence to
> the nominal kernel style.  It sometimes leads to mild
> regret over things like whitespace defects.

In the specific case of whitespace defects, does git diff not catch
those?

For that matter, should we add a .gitattributes file to the kernel
enabling additional whitespace errors git knows how to catch?  git.git
has such a file.
