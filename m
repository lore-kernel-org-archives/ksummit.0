Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B291E902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:41:16 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0016.hostedemail.com
	[216.40.44.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5ACE9100
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:41:15 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 27E864577
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:41:14 +0000 (UTC)
Message-ID: <1472492468.3425.52.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Mon, 29 Aug 2016 10:41:08 -0700
In-Reply-To: <20160829171651.GA27257@cloud>
References: <1472330452.26978.23.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
	<20160829071515.wqlpjccq7a3vk7u6@piout.net>
	<5149968.BflLUdM3a8@wuerfel>
	<1472474879.3425.30.camel@perches.com> <20160829171651.GA27257@cloud>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Mon, 2016-08-29 at 10:16 -0700, Josh Triplett wrote:
> On Mon, Aug 29, 2016 at 05:47:59AM -0700, Joe Perches wrote:
> > 
> > I generally don't run it on my own patches, mostly out
> > of possibly misplaced confidence in my own adherence to
> > the nominal kernel style.  It sometimes leads to mild
> > regret over things like whitespace defects.
> In the specific case of whitespace defects, does git diff not catch
> those?
> 
> For that matter, should we add a .gitattributes file to the kernel
> enabling additional whitespace errors git knows how to catch?  git.git
> has such a file.

For reference:
    https://git-scm.com/docs/gitattributes
https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
and here's the git.git .gitattributes file:
    $ cat .gitattributes 
    * whitespace=!indent,trail,space
    *.[ch] whitespace=indent,trail,space diff=cpp
    *.sh whitespace=indent,trail,space

Using something like that for kernel git would be a
good idea for trailing whitespace and space before HT.

But aren't those the generic git default options now?
