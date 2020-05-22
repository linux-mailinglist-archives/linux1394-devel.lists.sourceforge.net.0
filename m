Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 948651DEE64
	for <lists+linux1394-devel@lfdr.de>; Fri, 22 May 2020 19:36:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jcBbG-00011q-4q; Fri, 22 May 2020 17:36:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1jcBbE-00011j-E3
 for linux1394-devel@lists.sourceforge.net; Fri, 22 May 2020 17:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YMDvPhOSSBDOsPM4POJYLC9keau/1OeHBRMQGe8Fa54=; b=O2JGD0ayLCfUC18hO21pofW9S+
 bTcSyIk6BHY1vgvyeNTqVjGHVguTVCzikplz05ruVqamIVcW/MGvusPYd5ZGJWsUM+ZytXo3XO5iV
 aIsD5DgI3z9rzJ8L/hMs5v0Uq0HccL/Ex6gw2sL84An3Y2bgaOKgRwFGXsUqnzkv7xb4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YMDvPhOSSBDOsPM4POJYLC9keau/1OeHBRMQGe8Fa54=; b=cgYeKqtkj1g1h3JoGy+YMRR+MI
 6QZ2P0u3yiAzX5KU8U60AUd/me0dWdyE/0FahmhIuHzE8mwJcc+D5rsVRC3IzsGlD8iyV4JuFhiH1
 2orzPqch+u2KYbyt9gIzySxMHfCLVlqggf9J0HfEWGYPoBBFVR1Ln9m+5wjsz66pfMb0=;
Received: from mout.gmx.net ([212.227.15.19])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcBbB-005cyI-Dk
 for linux1394-devel@lists.sourceforge.net; Fri, 22 May 2020 17:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1590168963;
 bh=L8OHkKiGCB/f+IXGOvXlrA5dVZpPxKv0KWhPeCEfQiU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=BeLXgfkAIYebk7dPy/b/dHEAFaJjpOKqtoTzjnKVAW06ogNORfIBepC20GqIxMD4h
 zFf8XH+aqqUE9rOOAVt7tRhQ8iAzw1u9Fn/jzKYz3gz5wy76dVx5rnFmiyYWgXqG/8
 zS41n3XBx7P/lOPsGptgJBPdUEv4ekgyuFVGwTos=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MmULr-1jCEVO1rBh-00iRzC; Fri, 22
 May 2020 19:36:03 +0200
Date: Fri, 22 May 2020 19:35:49 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>, keescook@chromium.org,
 mchehab@kernel.org, clemens@ladisch.de, tiwai@suse.de, perex@perex.cz
Subject: Re: [PATCH 0/2] firewire: obsolete cast of function callback toward
 CFI
Message-ID: <20200522173549.GA3059@ubuntu>
References: <20200520064726.31838-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520064726.31838-1-o-takashi@sakamocchi.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:FBWJEV1Z+urCsYOxGe/qn+1ueZnIfzXJgXzE4sYXx2E6pTYxzTv
 z+vuWi/c+ugAv7NWN04Ae5Py94IM94abNLP1X0yCKYKEFIpu63slErlj9Fhy71e4OHzYglB
 +lQqRKUx5IjQ07W1dZ28vMOnrvIxckwJzFlxHK/OLsyentYpWqqW6H0z/J+wo+Rho3M4EOR
 yy6Jf31X/2ADUl48LCMBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qQZnxhBV1OE=:rHKO2Cr/IEWABaxDAPPKV6
 o3uezfePqPg8YTDyafPdmkb+4ckMJPNxVRQkNHKzYeHo+Os6qkNQUSxxTHCmQFDhfBQb0jNHh
 BdBqwZG+aGRrCkMv5CdCwkQ/d4GyQt9bgCR4jlFZ3jv49X5MW7L0b7Dmpbpa8g1BZ6mcyNDVH
 JFRDJGUlEAZFnnpwaHhJCBD3LS5z+DD4ubbcGszKZYshC6FDJERTbifdP0VSzin5thJm4wMLl
 s+Pqk3W+LI/3M2B2Ot5cHoHa2TmxhrYXisqjRtZNNrvr2G9PUbJxPUV2jRf/9MlCz7zvtx7w2
 IhWpaXJbAvi/KoT2F5zMykbYL3rrOmkRqwmvw8cQZmEtJgUUIBZdOEgJU0WVGBTf4IQou6u8y
 yfBXCYXnSXmc7UqZn+Xr+wkFqRiBd4AEjqzDYOIMOOproICCTYf3XOvSuf+jdUXvW8nbbY3M9
 3lvNG0t8kNHp/P/0p5WO3EsA7AObaFik3wTY32uWwIJH4b8U4h7wbNSR+0TWc76+PLLSZWnnw
 WFpv4AzhWrXeSCXgpeabnNO9lDgc3aDUW3oMeIO8NTErhmEJztO/Md2W3YtHrt4rXPankumz9
 lMAQTUARY+TKYggs6JnZQrfRsmfP4N/6EjPWvVbp4Xi333kuxYEGyoMLu4yHcXZJHi4mAaihJ
 EfJyvM+pNSejc0KDT/mrCEuZ7ODbAXJsIo6FYU83i7jv+2kVtURdOgPdsTv3bgnC/9gU5Wo2p
 qO8l/TM+osXKI7V7SBWWh8XsBndANr8TxGGJ9SS4gFG2ZmV5cXw5KsganYsF0rT/b804BTW/p
 bL0mRLhw5i+gXNVqYUrA7hfSTNq83sw1cJHT6P6L+T+VHC6QLeQo1X+scEuKtTeQIL+A/zibh
 aikX9N2HOSiKma4BOujmTmP2sFZbygP3CmxmYE5oI1eg8fsxyzzT1fsM4MaKQ1VwueAxyPxv/
 QLQUlcvW09MYGaIgN2THxOeQSa8zuDJWMglQ19+o3DqtjSGi/H0BAtvukYx46jFOUu1kwDtTg
 ooprer23ED/ADxKx4B7Ym+/ptHya3yxwKz/9nJ1xPgCMd7p8bbbtKAnowRofqh5PdmFBWuryE
 sIkYM2rpcNAYV4c+6ui8wgVr9kWwnSx8bqUTEKF2biSG45/AE4bEItsUyOXejHsTjvmTSQZ4m
 opPsBqRorwR0fA0Y4Xif41sZWA/dty4A+hdK2FyzhaEC5O4xhBisLmMxCbRO/tAqcGH+ysXFZ
 ZmLIFobfRvFTtpOLP
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcBbB-005cyI-Dk
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: alsa-devel@alsa-project.org, Oscar Carter <oscar.carter@gmx.com>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 levonshe@gmail.com, linux1394-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, May 20, 2020 at 03:47:24PM +0900, Takashi Sakamoto wrote:
> Hi,
>
> Oscar Carter works for Control Flow Integrity build. Any cast
> of function callback is inconvenient for the work. Unfortunately,
> current code of firewire-core driver includes the cast[1] and Oscar
> posted some patches to remove it[2]. The patch is itself good. However,
> it includes changes existent kernel API and all of drivers as user
> of the API get affects from the change.
>
> This patchset is an alternative idea to add a new kernel API specific
> for multichannel isoc context. The existent kernel API and drivers is
> left as is.
>
> Practically, no in-kernel drivers use the additional API. Although the
> API is exported in the patchset, it's better to discuss about unexporting
> the API.
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firewire/core-cdev.c#n985
> [2] https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/
>
> Regards
>
> Takashi Sakamoto (2):
>   firewire-core: add kernel API to construct multichannel isoc context
>   firewire-core: obsolete cast of function callback
>
>  drivers/firewire/core-cdev.c | 44 +++++++++++++++++++-----------------
>  drivers/firewire/core-iso.c  | 17 ++++++++++++++
>  include/linux/firewire.h     |  3 +++
>  3 files changed, 43 insertions(+), 21 deletions(-)
>
> --
> 2.25.1
>
Thanks for your work and new proposal. I've done a test build an it cleans the
-Wcast-function-type warning without the need to change the current API. So, it
looks good to me.

Thanks,
Oscar Carter


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
