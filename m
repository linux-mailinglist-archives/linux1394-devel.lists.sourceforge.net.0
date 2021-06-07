Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 964CA39DEBF
	for <lists+linux1394-devel@lfdr.de>; Mon,  7 Jun 2021 16:29:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lqGFb-000081-Cc; Mon, 07 Jun 2021 14:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1lqGFN-00006J-Jq
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 14:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F1YzfAEZX9/5x9xJ6kvArkhlaae95zJ3bBLE30ajF5s=; b=fXqXZkpv6tN8Zk8QmqlrQ7LGwe
 2s7+9/vamuzrBeLxzQeCjjdPJSCxlONNyCKfYu8iwL9iBm18UCcxZGVYm3i8p/ziXn1bneB7SiWZA
 BDEigd512jpYziP/R6/xb4oLFNND3cUpUsdTXuFMh8tw1TLsn5CwTOLOnyOkSq+iiQMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F1YzfAEZX9/5x9xJ6kvArkhlaae95zJ3bBLE30ajF5s=; b=RiHrsaH2oIPqzhAwoqYrRtG0iI
 hy4lJPRm58diwytIbybyr9vH7+Ee1duPEc+FYvO70CtFClqg1QkMn/PApgZoELnbcfWqzquiiJPhd
 2E2myvpshshJbge0Ao2WjDcsMP0W7QsdH9qab2/12leR1m+yTYIZwU/iexv4U5qAQQ2s=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqGFJ-00EuVS-7q
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 14:28:59 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 157EBPic130318;
 Mon, 7 Jun 2021 14:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=F1YzfAEZX9/5x9xJ6kvArkhlaae95zJ3bBLE30ajF5s=;
 b=lY285pPFOg+p6M6tTsJGN9HxUuJAQJhL67TVZE+AEukVjeVQNE7gWlafnYOBQk5LH1jm
 xEDibYi8LeX0/Lt0/ktiQdWslWxxpY6NzIKbiYmNnqcXhEAWf9nWBJY6/ysz5e9zUKlk
 PHkGrv7DGYxvFxJFmDZpzczElqbgaKb1A1CCZiny3+nu0SoAmj9uXSk4gHkrAN1Q08h8
 qo+jx782PhiM+RHQs2POYcw/fhFZmvxMFe5BDE/bIedKttdPhkiN+RBDC2hA1Lunk4rL
 QzPoRFLvLsY1cBnmWOIXnnNWwGC936Dczpxv8w/mkn1km2vlxq8g0b/glImZ7NCwmcZE Ng== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 3900ps37rt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Jun 2021 14:28:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 157EAo4T071460;
 Mon, 7 Jun 2021 14:28:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 38yyaa4wud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Jun 2021 14:28:36 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 157ESZgG127099;
 Mon, 7 Jun 2021 14:28:35 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 38yyaa4wu2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Jun 2021 14:28:35 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 157ESXWJ006837;
 Mon, 7 Jun 2021 14:28:33 GMT
Received: from kadam (/41.212.42.34) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Jun 2021 14:28:32 +0000
Date: Mon, 7 Jun 2021 17:28:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Yang Yanchao <yangyanchao6@huawei.com>
Subject: Re: [PATCH] media firewire firedtv-avc fix a buffer overflow in
 avc_ca_pmt()
Message-ID: <20210607142825.GH10983@kadam>
References: <20210607073900.1298-1-yangyanchao6@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210607073900.1298-1-yangyanchao6@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: yOn1oklaH1u6TQ3FLHZuISmk545-GmEV
X-Proofpoint-ORIG-GUID: yOn1oklaH1u6TQ3FLHZuISmk545-GmEV
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10008
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 clxscore=1011
 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106070105
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [156.151.31.86 listed in bl.mailspike.net]
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lqGFJ-00EuVS-7q
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
Cc: linux-distros@vs.openwall.org, mchehab@kernel.org,
 linux1394-devel@lists.sourceforge.net, security@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Thanks for resending this patch, but you need to preserve the author
and Reported-by tags.

https://lore.kernel.org/linux-media/YHaulytonFcW+lyZ@mwanda/

You changed the check in fdtv_ca_pmt() but I don't understand why you
did that...  But looking at it again, I think neither of us was correct,
instead of "sizeof(msg->msg) - 4" it should be "- data_pos":

	if (data_length > sizeof(msg->msg) - data_pos)
		return -EINVAL;

I will resend a v2.

regards,
dan carpenter



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
