Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B33BA8A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 16 Aug 2014 23:36:48 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 492671F746
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 16 Aug 2014 23:36:48 +0000 (UTC)
Date: Sat, 16 Aug 2014 16:36:40 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140816233640.GA23745@thin>
References: <CALCETrU1RUzCV-abcDSAxrYJo=Ttrysz2Z0RL_kvzOx+eU6W4A@mail.gmail.com>
	<CALCETrVQRgNeyUhNkV6+a1R+9zDY2nop1Oj7xOnen0==y0H8qw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVQRgNeyUhNkV6+a1R+9zDY2nop1Oj7xOnen0==y0H8qw@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [Ksummit-discuss] Mount API?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 16, 2014 at 01:43:40PM -0700, Andy Lutomirski wrote:
> Is anyone interested in discussing a new mount API in the unconference
> track?
> 
> Think bindmountat, etc.

I'm quite interested.  The current mount API is crufty, very
string-heavy, and far too multiplexed.

- Josh Triplett
