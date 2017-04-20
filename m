Return-Path: <gregkh@linuxfoundation.org>
Date: Thu, 20 Apr 2017 12:59:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20170420105933.GA26134@kroah.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<87wpafsdbl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wpafsdbl.fsf@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, David Miller <davem@davemloft.net>,
	Doug Ledford <dledford@redhat.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Apr 20, 2017 at 11:17:18AM +0300, Jani Nikula wrote:
> On Wed, 19 Apr 2017, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> > Yeah, I don't think we can do much about distros that intentionally
> > want to stay behind and backport.
> 
> /me looks at https://www.kernel.org/
> 
> 1 stable, 8 longterm, and 1 eol'd longterm kernels. The oldest longterm
> is based on a five years old release.

That 5 year old kernel is due to Debian's looney release schedule, go
take it up with them :)

> I just think the multitude of longterm kernels are sending a message
> that it's perfectly fine to stay behind. Don't get me wrong, I know why
> they are there, but I still think in the past the focus on encouraging
> to always use the latest stable kernel was stronger.

And how do you suggest that we do that any more than we currently do?
(i.e. I go around and talk to companies all the time about this issue,
did a tour of Asia last month, and will be talking to some US-based
companies next month.)

As you say, you know why they are there, so why is that not a valid
reason in itself?  :)

And you will note (although everyone seems to ignore it), that we are
now only adding 1 new LTS kernel a year, and have been for the past few
years, in order to cut down on the proliferation we had 3-4 years back.

thanks,

greg k-h
