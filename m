Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNOyLAXCzGkWWgYAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 01 Apr 2026 08:58:13 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2E937578E
	for <lists+linux1394-devel@lfdr.de>; Wed, 01 Apr 2026 08:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+aaM4o0WvP3fuwMrDzbUTIpgZgKoPgRAXQGCBcLYzMY=; b=RCumFFb38WAsktvKJMZo8ii4Jk
	uAsHQlvGK8OvbEB5ksOh5i9phUysuHcg4eAM7hfcXTGbXaVmidv9cG7rdtYwTczHU8fdvrlMOm+hj
	uT/mEkGw2FJeSpAao0SkIm2/Y6I1rjByz3lh0WtbS/ExnGU6piQ16UOdyeaS+14g05Sw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1w7pWZ-0004E1-7i;
	Wed, 01 Apr 2026 06:57:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1w7pWX-0004Dq-8g
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 Apr 2026 06:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lDbN4i1mpbsyhvkc5OFgn6ktb4xwtcyiJDmkj/KsKE8=; b=YsiRV5fkqywBGDGnx0XrlcLo0w
 kh4zCDLyDaHH/b/KEBs0FYi2WNhqlE7NoYQ0ye2W/IWoyFSTfmBUGfRLm+dDncyk3ALBWN5ksXx8F
 Vw8/bXUx4G5vePUMRfpmvfAmtasqK5OMi25ap6YDgxG44HrXTce2S3SEXGGI20hvd9UU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lDbN4i1mpbsyhvkc5OFgn6ktb4xwtcyiJDmkj/KsKE8=; b=QIwj+0bxWL5iknFYfZ1NhQkRIk
 XnpxEaORdL+7t19q4NACS+hjxCECXgsARZ/MTod/Kw9LSd9pMmAhzWJ++jq3KpZKnn4NUNUViKFg2
 /u1aXG2ft6T/UnmvkZvASGatR9hUqZ4D7gwEO0L6zI0uTAzTDKdtRhfNJZMzmlT8+QjQ=;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w7pWV-0001tj-M6 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 Apr 2026 06:57:57 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id F35C37A0335;
 Wed,  1 Apr 2026 02:57:44 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Wed, 01 Apr 2026 02:57:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1775026664; x=
 1775113064; bh=lDbN4i1mpbsyhvkc5OFgn6ktb4xwtcyiJDmkj/KsKE8=; b=J
 A6nojPwnfbQvEy/wB0jWhPZFcUFAwlMgRbPvgA0Yw9wUiNTHZGXYCHiUZVkzBHYN
 QJINrJTDpBoAwxUy7vxLgegvzzCS6EZf0r2UZxQkxnS/vsVFhL3rPVwOeAxcDDH8
 O0TMwdhLsC/PIK5dkgm6xWdjMKUMoJq76lIRDBisvoL56wft0fTcIlinB90lXcDc
 TUS/5qCf6/1yzf2NKqp7qBPQOC0KClUCYkrTTG+7kkKWk9PgdOoiODZPE3KYx80x
 T9vHqarGO9YwLUa59/DfMDzO0Iy+rPATCSWvyx+uaR4MNK8NzFCkVIZDA/BHIJeR
 cwU5apHCQU5In4uWXj3Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1775026664; x=1775113064; bh=lDbN4i1mpbsyhvkc5OFgn6ktb4xwtcyiJDm
 kj/KsKE8=; b=NDgqKKIx/ftw6lU+auUyOQVOTJ/Bt+wjoyrWHllKyHeRX6vV80z
 EEssIue+a0j5Mx8QPd1FLoq1rja6eWInWkSa3nyrEQM5iSwsGjHr6GvuiQdj/6tB
 l6+NcqaSrZCfTkxqmjYgpH/G1KvvmcqynmZBYalWYrrik4tdYleVOafPGivygsS1
 jPvpkD4910WMk6s+wfDTCdg9V5rxs/LN9ra2YP1s6NN6xFb9dpt/fc5TeYG744SX
 w7N+5WSLZKNLBzM9jVOd7qRHz9Y4nc1beb4USg2bxQXZnZAY7D8QtB8bwiRdub9y
 pKhffkSDFATRXVD3Ud6ixPIH1O7hqmfCIcQ==
X-ME-Sender: <xms:6MHMaTNQ_HuUIkgQmA-ASzOb4CRXl0qpTtrNueJWPimnRwNQAav_zA>
 <xme:6MHMaVbvUVWMTDVy0PDqQ-SIgTDJ1HPFgSQoQ1mXM_5zdV-yipk9ePRAYsGqmr9fI
 b3KRygFcPBL9kBzFFlHCCw4GgYNbYbdmQOmGwRxZ81tU2eQAH8Ylg>
X-ME-Received: <xmr:6MHMafozsFys3plV6Djkcyhz4Edl_OeZ4pRvKtovgeOwr9MN3IA-WQxiPjS-C7ltNU9rAwOEK6GM2ZOBup7Y8eC-Iv15>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddvgeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvd
 eiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopeguihhnghhishhordhkvghrnhgvlhesghhmrghilhdrtghomhdprhgtph
 htthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhr
 ghgvrdhnvghtpdhrtghpthhtohepshhhuhgrnhhgphgvnhhgrdhkvghrnhgvlhesghhmrg
 hilhdrtghomh
X-ME-Proxy: <xmx:6MHMaRZB-2S7O4DojUHP2JRtLMnwRIxb4_bgrM6DMoNEr13j2LPzIQ>
 <xmx:6MHMafT1HTop8nfo2p_35CD-dDE9EUKtHA7KkhmfaLmqrO9Or9NJWQ>
 <xmx:6MHMaQ5yPAmU77UfxR3u6qJs7crtfM6Rfq3Uhp46CXx70317LH8Ing>
 <xmx:6MHMacwt8PPjCcGQ0rXK9tmCOH3AyBqxnCktuT9HpmeZKF82k6wupw>
 <xmx:6MHMaaZCGjhxr3pAa95bFtKCYFn2P3dKyCC845HMeb4Kab7fH2g-nqn_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Apr 2026 02:57:43 -0400 (EDT)
Date: Wed, 1 Apr 2026 15:57:41 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Dingisoul <dingiso.kernel@gmail.com>
Subject: Re: [BUG] firewire: core-cdev: refcount leak in iso_resource_work
 during resource cleanup
Message-ID: <20260401065741.GA99710@sakamocchi.jp>
Mail-Followup-To: Dingisoul <dingiso.kernel@gmail.com>,
 linux1394-devel@lists.sourceforge.net, shuangpeng.kernel@gmail.com
References: <20260331194818.291061-1-dingiso.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260331194818.291061-1-dingiso.kernel@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Mar 31, 2026 at 03:48:18PM -0400,
 Dingisoul wrote: > Hi Kernel maintainers,
 > > We found a possible refcount leak in iso_resource_work.
 > > When an iso_resource is being freed in iso_resource_ [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1w7pWV-0001tj-M6
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
Cc: linux1394-devel@lists.sourceforge.net, shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dingiso.kernel@gmail.com,m:linux1394-devel@lists.sourceforge.net,m:shuangpeng.kernel@gmail.com,m:dingisokernel@gmail.com,m:shuangpengkernel@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,sakamocchi.jp:mid]
X-Rspamd-Queue-Id: 9A2E937578E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Tue, Mar 31, 2026 at 03:48:18PM -0400, Dingisoul wrote:
> Hi Kernel maintainers,
> 
> We found a possible refcount leak in iso_resource_work.
> 
> When an iso_resource is being freed in iso_resource_work,
> cancel_delayed_work is called. If this call successfully 
> cancels a pending work item, the client reference acquired
> when that work was scheduled is never released.
> 
> static void schedule_iso_resource(struct iso_resource *r,
>                                    unsigned long delay)
> {
>     client_get(r->client); // 1. Reference taken
>     if (!queue_delayed_work(fw_workqueue, &r->work, delay))
>         client_put(r->client);
> }
> 
> 
> static void iso_resource_work(struct work_struct *work)
> {
>     struct iso_resource *r = from_work(r, work, work.work);
>     if (free) {
>         cancel_delayed_work(&r->work); // 2. Potential leak
>         kfree(r->e_alloc);
>         kfree(r->e_dealloc);
>         kfree(r);
>     }
> }

We could see the "client_put()" at the line after "out" label.

$ git show v6.19:drivers/firewire/core-cdev.c | cat -n
      ...
1317  static void iso_resource_work(struct work_struct *work)
1318  {
          ...
1321      struct client *client = r->client;
          ...
	  (no return statements)
          ...
1401      if (free) {
1402          cancel_delayed_work(&r->work);
1403          kfree(r->e_alloc);
1404          kfree(r->e_dealloc);
1405          kfree(r);
1406      }
1407   out:
1408      client_put(client);
1409  }

I guess the above lines are not necessarily friendly to any of your
tools. I would be glad to receive any patches or ideas inspired by your
testing mindset.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
