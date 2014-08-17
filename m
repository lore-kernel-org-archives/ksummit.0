Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3E43979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 22:05:10 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6603F1F884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 22:05:10 +0000 (UTC)
Message-ID: <53F12701.3050500@zytor.com>
Date: Sun, 17 Aug 2014 15:04:49 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Triplett <josh@joshtriplett.org>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20140817002051.GA25397@thin>
In-Reply-To: <20140817002051.GA25397@thin>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] Unconference session on getting LTO into the
 kernel?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/16/2014 05:20 PM, Josh Triplett wrote:
> There's been a lot of discussion about link-time optimization of the
> Linux kernel.  However, as of yet the patches have not yet gone in.
> I've seen objections on the grounds that it increases build time and
> memory usage, but those objections don't seem like reasons to omit the
> patches, just reasons to keep LTO optional and disabled by default (and
> potentially to prevent "allyesconfig" from enabling it).
> 
> Anyone interested in a session to hammer out the last details to get the
> patches merged?
> 
> (If this mail ends up prompting discussion that settles this via email,
> that'd be a fine result too.)
> 

Last I heard you still needed a modified toolchain for kernel LTO to
work.  That is the real killer issue in my mind... if the toolchain
isn't available to people it is really hard to expect people to not
cause the code to bitrot.

	-hpa
