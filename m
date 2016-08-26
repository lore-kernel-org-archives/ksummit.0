Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 26 Aug 2016 13:26:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Message-ID: <20160826112635.GA27627@kroah.com>
References: <20160826044651.GA25341@sasha-lappy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160826044651.GA25341@sasha-lappy>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
>    - Making checkpatch check for (some) of the stable kernel rules
>    (and possibly recommend adding the stable@ tag in certain cases?).
>      - Depends on: making checkpatch sane again.

This sounds interesting.  What do you mean by "sane"?  "sane" as in
rewriting it so that someone who isn't a perl master can modify it?  Or
"sane" as in "don't be so pedantic about things that don't matter"?

>    - Improving tagging for stable. The "version tag" option is broken
>    and the "Fixes:" tag is always preferable, how do we get people to
>    use that more often? (script it somehow?
>    scripts/find-version-it-fixes ?).

Oh a script like that would be nice, but how would that work in reality?

thanks,

greg k-h
