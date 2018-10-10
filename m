Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA4CCCBD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 23:41:09 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFEBF807
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 23:41:08 +0000 (UTC)
Date: Thu, 11 Oct 2018 00:41:05 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20181010234104.GH32577@ZenIV.linux.org.uk>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<87efcxtmhf.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87efcxtmhf.fsf@xmission.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 10, 2018 at 06:23:24PM -0500, Eric W. Biederman wrote:

> Which is very problematic.
> a) In append only logs like git we can not edit history.
>    Making it a mainters responsibility to edit the history, to do the
>    impossible is a problem.
> 
> b) There are no responsibilities of for people who are not Maintainers.
>    That is another problem.
> 
> c) The entire tone of the reponsibilities section is out of line with a
>    community where there are no enforcement powers only the power to
>    accept or not accept a patch.  Only the power to persuade not to
>    enforce.

  d) In effect, it either leaves the maillists exempt, or, if they are
     not as would seem to be the intent, dumps physically unsustainable
     load on somebody (davem, by default, for vger-based lists).
     And anyone who wants to claim that moderating l-k, l-scsi, fsdevel,
     etc., etc. is *not* physically unsustainable is welcome to try.
     Just make sure that your insurance covers the psychiatric care you
     are certain to need afterwards.

> Overall in the discussions I have heard people talking about persuading,
> educating, and not feeding trolls.   Nowhere have I heard people talking
> about policing the community which I understand that responsiblity
> section to be talking about.
> 
> Increasingly I am getting the feeling that this document does not the
> linux development community.

Quite.  Not the use of open maillists, not the amount of trees and the
depth of pull chains, not the size of community, not the cross-area work...

Frankly, it reminds me of "well, if everyone had only switched to one true
revision control system and used the one true integrated IDE with this nifty
set of plugins..." kind of proposals.  Good for you if it works for your
workflow, but forget about having everyone else switch to it.
